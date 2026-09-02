import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? WelcomeWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? WelcomeWidget() : LoginWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: BoxeadoresWidget.routeName,
          path: BoxeadoresWidget.routePath,
          builder: (context, params) => BoxeadoresWidget(),
        ),
        FFRoute(
          name: CrearBoxeadorWidget.routeName,
          path: CrearBoxeadorWidget.routePath,
          builder: (context, params) => CrearBoxeadorWidget(),
        ),
        FFRoute(
          name: VerBoxeadorWidget.routeName,
          path: VerBoxeadorWidget.routePath,
          asyncParams: {
            'boxeador': getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => VerBoxeadorWidget(
            boxeador: params.getParam(
              'boxeador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CrearAsistenciaWidget.routeName,
          path: CrearAsistenciaWidget.routePath,
          builder: (context, params) => CrearAsistenciaWidget(),
        ),
        FFRoute(
          name: EditarAsistenciaWidget.routeName,
          path: EditarAsistenciaWidget.routePath,
          builder: (context, params) => EditarAsistenciaWidget(
            asistenciaParameter: params.getParam(
              'asistenciaParameter',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['asistencia'],
            ),
          ),
        ),
        FFRoute(
          name: EntrenamientosWidget.routeName,
          path: EntrenamientosWidget.routePath,
          builder: (context, params) => EntrenamientosWidget(),
        ),
        FFRoute(
          name: CrearEntrenamientoWidget.routeName,
          path: CrearEntrenamientoWidget.routePath,
          builder: (context, params) => CrearEntrenamientoWidget(),
        ),
        FFRoute(
          name: VerEntrenamientoWidget.routeName,
          path: VerEntrenamientoWidget.routePath,
          asyncParams: {
            'entrenamiento':
                getDoc(['entrenamientos'], EntrenamientosRecord.fromSnapshot),
          },
          builder: (context, params) => VerEntrenamientoWidget(
            entrenamiento: params.getParam(
              'entrenamiento',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: RegistrarProgresoWidget.routeName,
          path: RegistrarProgresoWidget.routePath,
          asyncParams: {
            'progresoBoxeador':
                getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => RegistrarProgresoWidget(
            progresoBoxeador: params.getParam(
              'progresoBoxeador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: HistorialAsistenciaWidget.routeName,
          path: HistorialAsistenciaWidget.routePath,
          builder: (context, params) => HistorialAsistenciaWidget(),
        ),
        FFRoute(
          name: HistorialProgresoBoxeadoresWidget.routeName,
          path: HistorialProgresoBoxeadoresWidget.routePath,
          asyncParams: {
            'historialProgreso':
                getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => HistorialProgresoBoxeadoresWidget(
            historialProgreso: params.getParam(
              'historialProgreso',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: BoxeadoreConProgresoWidget.routeName,
          path: BoxeadoreConProgresoWidget.routePath,
          builder: (context, params) => BoxeadoreConProgresoWidget(),
        ),
        FFRoute(
          name: EditarProgresoWidget.routeName,
          path: EditarProgresoWidget.routePath,
          asyncParams: {
            'progresoEditar': getDoc(['progreso'], ProgresoRecord.fromSnapshot),
          },
          builder: (context, params) => EditarProgresoWidget(
            progresoEditar: params.getParam(
              'progresoEditar',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EstadisticasWidget.routeName,
          path: EstadisticasWidget.routePath,
          builder: (context, params) => EstadisticasWidget(),
        ),
        FFRoute(
          name: EstadisticaRendimientoWidget.routeName,
          path: EstadisticaRendimientoWidget.routePath,
          asyncParams: {
            'estadisticaBoxeador':
                getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => EstadisticaRendimientoWidget(
            estadisticaBoxeador: params.getParam(
              'estadisticaBoxeador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ListaBoxeadoresRendimientoWidget.routeName,
          path: ListaBoxeadoresRendimientoWidget.routePath,
          builder: (context, params) => ListaBoxeadoresRendimientoWidget(),
        ),
        FFRoute(
          name: EstadisticaPeleasWidget.routeName,
          path: EstadisticaPeleasWidget.routePath,
          asyncParams: {
            'estadisticaBoxeador':
                getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => EstadisticaPeleasWidget(
            estadisticaBoxeador: params.getParam(
              'estadisticaBoxeador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ListaBoxeadoresPeleasWidget.routeName,
          path: ListaBoxeadoresPeleasWidget.routePath,
          builder: (context, params) => ListaBoxeadoresPeleasWidget(),
        ),
        FFRoute(
          name: CrearPeleaWidget.routeName,
          path: CrearPeleaWidget.routePath,
          asyncParams: {
            'peleaBoxeador':
                getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => CrearPeleaWidget(
            peleaBoxeador: params.getParam(
              'peleaBoxeador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: VerPeleaWidget.routeName,
          path: VerPeleaWidget.routePath,
          asyncParams: {
            'infoPelea': getDoc(['peleas'], PeleasRecord.fromSnapshot),
          },
          builder: (context, params) => VerPeleaWidget(
            infoPelea: params.getParam(
              'infoPelea',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: PerfilWidget.routeName,
          path: PerfilWidget.routePath,
          builder: (context, params) => PerfilWidget(),
        ),
        FFRoute(
          name: EditarBoxeadorWidget.routeName,
          path: EditarBoxeadorWidget.routePath,
          asyncParams: {
            'editarBoxeador':
                getDoc(['boxeadores'], BoxeadoresRecord.fromSnapshot),
          },
          builder: (context, params) => EditarBoxeadorWidget(
            editarBoxeador: params.getParam(
              'editarBoxeador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: BoxeadoresInactivosWidget.routeName,
          path: BoxeadoresInactivosWidget.routePath,
          builder: (context, params) => BoxeadoresInactivosWidget(),
        ),
        FFRoute(
          name: WelcomeWidget.routeName,
          path: WelcomeWidget.routePath,
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: HomeAdminWidget.routeName,
          path: HomeAdminWidget.routePath,
          builder: (context, params) => HomeAdminWidget(),
        ),
        FFRoute(
          name: ListaEntrenadoresWidget.routeName,
          path: ListaEntrenadoresWidget.routePath,
          builder: (context, params) => ListaEntrenadoresWidget(),
        ),
        FFRoute(
          name: VerEntrenadorWidget.routeName,
          path: VerEntrenadorWidget.routePath,
          asyncParams: {
            'entrenador': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => VerEntrenadorWidget(
            entrenador: params.getParam(
              'entrenador',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: InvitacionesTokensWidget.routeName,
          path: InvitacionesTokensWidget.routePath,
          builder: (context, params) => InvitacionesTokensWidget(),
        ),
        FFRoute(
          name: ConfiguracionWidget.routeName,
          path: ConfiguracionWidget.routePath,
          builder: (context, params) => ConfiguracionWidget(),
        ),
        FFRoute(
          name: ContrasenaWidget.routeName,
          path: ContrasenaWidget.routePath,
          builder: (context, params) => ContrasenaWidget(),
        ),
        FFRoute(
          name: AcercaDeWidget.routeName,
          path: AcercaDeWidget.routePath,
          builder: (context, params) => AcercaDeWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/ChatGPT_Image_20_ago_2026,_23_38_58.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}

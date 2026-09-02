# 🥊 KO Boxing

Aplicación móvil para el **registro, control y análisis del rendimiento deportivo de atletas de boxeo**.

KO Boxing fue desarrollada como parte de un proyecto de **Trabajo Comunal Universitario (TCU)** para apoyar la gestión del área de boxeo del **Comité Cantonal de Deportes de Liberia**, Guanacaste, Costa Rica.

---

## 📱 Sobre el proyecto

KO Boxing busca centralizar en una sola aplicación la información relacionada con los atletas y su actividad deportiva.

La aplicación permite a los entrenadores registrar información de los boxeadores, controlar su asistencia, documentar entrenamientos, dar seguimiento a su progreso y mantener un historial de peleas.

El objetivo es facilitar la organización de la información y proporcionar datos que ayuden al seguimiento del rendimiento de cada atleta.

---

## ✨ Funcionalidades

### 👥 Gestión de boxeadores

* Registrar nuevos boxeadores.
* Consultar información de los atletas.
* Actualizar información.
* Visualizar el listado de boxeadores registrados.

### 📋 Control de asistencia

* Registrar asistencia de los atletas.
* Consultar la asistencia por fecha.
* Mantener un historial de asistencia.

### 🥊 Entrenamientos

* Registrar sesiones de entrenamiento.
* Asociar entrenamientos con los atletas.
* Consultar el historial de entrenamientos.

### 📈 Seguimiento del progreso

Permite registrar diferentes datos relacionados con la evolución deportiva del atleta, incluyendo:

* Peso.
* Fuerza.
* Condición física.
* Otros indicadores de rendimiento.

Los registros permiten observar la evolución del atleta a lo largo del tiempo.

### 🏆 Peleas

* Registrar combates.
* Registrar oponente.
* Registrar fecha.
* Registrar resultado.
* Consultar el historial de peleas.

### 📊 Estadísticas

El módulo de estadísticas permite consultar información relevante sobre el rendimiento de los atletas.

Entre los datos disponibles se encuentran:

* Asistencia.
* Evolución del peso.
* Resultados de peleas.
* Progreso deportivo.

---

## 🔐 Usuarios y roles

La aplicación cuenta con dos tipos principales de usuarios:

**Administrador**

Tiene acceso a las funciones administrativas y a la gestión general del sistema.

**Entrenador**

Puede gestionar la información deportiva de los boxeadores, registrar asistencia, entrenamientos, progreso y peleas.

El acceso a las funcionalidades se controla mediante permisos asociados al rol del usuario.

---

## 🛠️ Tecnologías

**Frontend / Aplicación móvil**

* Flutter
* FlutterFlow

**Backend y servicios**

* Firebase Authentication
* Cloud Firestore
* Firebase Storage

**Control de versiones**

* Git
* GitHub

---

## 🏗️ Estructura general

La aplicación está organizada en diferentes módulos:

**Autenticación**

* Inicio de sesión
* Gestión de usuarios
* Roles y permisos

**Boxeadores**

* Registro
* Consulta
* Actualización

**Asistencia**

* Registro de asistencia
* Historial

**Entrenamientos**

* Registro de sesiones
* Seguimiento

**Progreso**

* Registro de métricas
* Evolución del atleta

**Peleas**

* Registro de combates
* Historial de resultados

**Estadísticas**

* Indicadores de rendimiento
* Análisis de información deportiva

---

## 🔥 Firebase

Firebase se utiliza como infraestructura principal de la aplicación.

### Firebase Authentication

Se utiliza para gestionar la autenticación de los usuarios y controlar el acceso a la aplicación.

### Cloud Firestore

Almacena la información relacionada con:

* Usuarios
* Boxeadores
* Asistencia
* Entrenamientos
* Progreso
* Peleas

### Firebase Storage

Se utiliza para almacenar archivos e imágenes asociados al sistema cuando es necesario.

---

## 🔒 Seguridad

La aplicación considera la seguridad desde el diseño de la solución.

Entre las medidas implementadas se encuentran:

* Autenticación de usuarios.
* Control de acceso basado en roles.
* Reglas de seguridad de Firestore.
* Validación de datos ingresados.
* Restricción de operaciones según permisos.
* Protección de información almacenada en Firebase.
* Separación de privilegios entre administradores y entrenadores.

Las credenciales y configuraciones sensibles de Firebase no deben incluirse en el repositorio público.

---

## 🎯 Objetivos

El proyecto busca:

* Digitalizar el registro de información deportiva.
* Facilitar la gestión de los boxeadores.
* Mejorar el control de asistencia.
* Centralizar el historial deportivo.
* Facilitar el seguimiento del progreso.
* Proporcionar información útil para el análisis del rendimiento.

---

## 🚀 Estado del proyecto

**En desarrollo**

KO Boxing continúa evolucionando con mejoras en funcionalidades, diseño, estadísticas y experiencia de usuario.

---

## 🔮 Próximas mejoras

* [ ] Gráficos avanzados de rendimiento.
* [ ] Dashboards deportivos.
* [ ] Generación de reportes.
* [ ] Calendario de entrenamientos y peleas.
* [ ] Notificaciones.
* [ ] Más métricas de rendimiento.
* [ ] Mejoras en la experiencia de usuario.

---

## 🎓 Contexto académico

**Proyecto:** Desarrollo e implementación de una aplicación móvil para el registro, control y análisis del rendimiento deportivo en el área de boxeo.

**Modalidad:** Trabajo Comunal Universitario (TCU)

**Área:** Boxeo

**Ubicación:** Liberia, Guanacaste, Costa Rica

**Carrera:** Ingeniería en Sistemas de Computación

---

## 👩‍💻 Autora

**Alisson Eras**

Estudiante de Ingeniería en Sistemas de Computación.

Proyecto desarrollado como parte del Trabajo Comunal Universitario.

---

## 📄 Licencia

Proyecto desarrollado con fines académicos y de apoyo al área deportiva.

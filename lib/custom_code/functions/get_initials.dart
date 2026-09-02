import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getInitials(
  String firstName,
  String lastName,
) {
  if (firstName.isEmpty && lastName.isEmpty) {
    return '';
  }

  final first =
      firstName.isNotEmpty ? firstName.substring(0, 1).toUpperCase() : '';

  final last =
      lastName.isNotEmpty ? lastName.substring(0, 1).toUpperCase() : '';

  return '$first$last';
}

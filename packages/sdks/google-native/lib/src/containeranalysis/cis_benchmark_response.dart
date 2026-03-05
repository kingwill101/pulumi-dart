// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A compliance check that is a CIS benchmark.
class CisBenchmarkResponse {
  final pulumi.Input<int> profileLevel;
  final pulumi.Input<String> severity;

  /// Creates a new [CisBenchmarkResponse].
  /// [profileLevel] Required.
  /// [severity] Required.
  CisBenchmarkResponse({
    required this.profileLevel,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileLevel': profileLevel,
      'severity': severity,
    };
  }

  factory CisBenchmarkResponse.fromMap(Map<String, dynamic> map) {
    return CisBenchmarkResponse(
      profileLevel: pulumi.Input.fromValue(map['profileLevel'] as int),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}


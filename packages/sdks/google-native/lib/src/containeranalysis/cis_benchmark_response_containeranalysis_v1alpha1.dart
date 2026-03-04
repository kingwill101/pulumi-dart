// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A compliance check that is a CIS benchmark.
class CisBenchmarkResponseContaineranalysisV1alpha1 {
  /// The profile level of this CIS benchmark check.
  final pulumi.Input<int> profileLevel;

  /// The severity level of this CIS benchmark check.
  final pulumi.Input<String> severity;

  /// Creates a new [CisBenchmarkResponseContaineranalysisV1alpha1].
  /// [profileLevel] The profile level of this CIS benchmark check.
  /// [severity] The severity level of this CIS benchmark check.
  CisBenchmarkResponseContaineranalysisV1alpha1({
    required this.profileLevel,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileLevel': profileLevel,
      'severity': severity,
    };
  }

  factory CisBenchmarkResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CisBenchmarkResponseContaineranalysisV1alpha1(
      profileLevel: pulumi.Input.fromValue(map['profileLevel'] as int),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}

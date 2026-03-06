// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_severity_containeranalysis_v1alpha1.dart';

/// A compliance check that is a CIS benchmark.
class CisBenchmarkContaineranalysisV1alpha1 {
  /// The profile level of this CIS benchmark check.
  final pulumi.Input<int>? profileLevel;
  /// The severity level of this CIS benchmark check.
  final pulumi.Input<CisBenchmarkSeverityContaineranalysisV1alpha1>? severity;

  /// Creates a new [CisBenchmarkContaineranalysisV1alpha1].
  /// [profileLevel] The profile level of this CIS benchmark check.
  /// [severity] The severity level of this CIS benchmark check.
  const CisBenchmarkContaineranalysisV1alpha1({
    this.profileLevel,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileLevel': ?profileLevel,
      'severity': ?pulumi.Input.mapOptionalInputValue<CisBenchmarkSeverityContaineranalysisV1alpha1, String>(severity, (value) => value.wireValue),
    };
  }

  factory CisBenchmarkContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return CisBenchmarkContaineranalysisV1alpha1(
      profileLevel: (() { final guardedValue = map['profileLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CisBenchmarkSeverityContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
    );
  }
}


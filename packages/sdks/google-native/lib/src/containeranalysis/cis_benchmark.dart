// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_severity.dart';

/// A compliance check that is a CIS benchmark.
class CisBenchmark {
  final pulumi.Input<int>? profileLevel;
  final pulumi.Input<CisBenchmarkSeverity>? severity;

  /// Creates a new [CisBenchmark].
  /// [profileLevel] Optional.
  /// [severity] Optional.
  const CisBenchmark({
    this.profileLevel,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileLevel': ?profileLevel,
      'severity': ?pulumi.Input.mapOptionalInputValue<CisBenchmarkSeverity, String>(severity, (value) => value.wireValue),
    };
  }

  factory CisBenchmark.fromMap(Map<String, dynamic> map) {
    return CisBenchmark(
      profileLevel: (() { final guardedValue = map['profileLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CisBenchmarkSeverity.fromValue(guardedValue as String)); })(),
    );
  }
}


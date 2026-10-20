// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int?>? cpuMs;
  /// Subrequest limit per request.
  final pulumi.Input<int?>? subrequests;

  /// Creates a new [WorkerVersionLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  /// [subrequests] Subrequest limit per request.
  const WorkerVersionLimits({
    this.cpuMs,
    this.subrequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': ?cpuMs,
      'subrequests': ?subrequests,
    };
  }

  factory WorkerVersionLimits.fromMap(Map<String, dynamic> map) {
    return WorkerVersionLimits(
      cpuMs: (() { final guardedValue = map['cpuMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      subrequests: (() { final guardedValue = map['subrequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

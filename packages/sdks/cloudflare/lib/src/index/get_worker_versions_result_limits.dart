// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionsResultLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int> cpuMs;
  /// Subrequest limit per request.
  final pulumi.Input<int> subrequests;

  /// Creates a new [GetWorkerVersionsResultLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  /// [subrequests] Subrequest limit per request.
  const GetWorkerVersionsResultLimits({
    required this.cpuMs,
    required this.subrequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
      'subrequests': subrequests,
    };
  }

  factory GetWorkerVersionsResultLimits.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultLimits(
      cpuMs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuMs'])),
      subrequests: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['subrequests'])),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultPreviewsBaseConfigLimits {
  /// The amount of CPU time this Worker can use in milliseconds.
  final pulumi.Input<int> cpuMs;
  /// The number of subrequests this Worker can make per request.
  final pulumi.Input<int> subrequests;

  /// Creates a new [GetWorkersResultPreviewsBaseConfigLimits].
  /// [cpuMs] The amount of CPU time this Worker can use in milliseconds.
  /// [subrequests] The number of subrequests this Worker can make per request.
  const GetWorkersResultPreviewsBaseConfigLimits({
    required this.cpuMs,
    required this.subrequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
      'subrequests': subrequests,
    };
  }

  factory GetWorkersResultPreviewsBaseConfigLimits.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultPreviewsBaseConfigLimits(
      cpuMs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuMs'])),
      subrequests: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['subrequests'])),
    );
  }
}

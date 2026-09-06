// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that define the flow log format.
class FlowLogFormatParametersResponse {
  /// The file type of flow log.
  final pulumi.Input<String?>? type;
  /// The version (revision) of the flow log.
  final pulumi.Input<int?>? version;

  /// Creates a new [FlowLogFormatParametersResponse].
  /// [type] The file type of flow log.
  /// [version] The version (revision) of the flow log.
  FlowLogFormatParametersResponse({
    this.type,
    pulumi.Input<int?>? version,
  }) : version = version ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'version': ?version,
    };
  }

  factory FlowLogFormatParametersResponse.fromMap(Map<String, dynamic> map) {
    return FlowLogFormatParametersResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

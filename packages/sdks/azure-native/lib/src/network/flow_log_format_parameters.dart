// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that define the flow log format.
class FlowLogFormatParameters {
  /// The file type of flow log.
  final pulumi.Input<String>? type;
  /// The version (revision) of the flow log.
  final pulumi.Input<int>? version;

  /// Creates a new [FlowLogFormatParameters].
  /// [type] The file type of flow log.
  /// [version] The version (revision) of the flow log.
  FlowLogFormatParameters({
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'version': ?version,
    };
  }

  factory FlowLogFormatParameters.fromMap(Map<String, dynamic> map) {
    return FlowLogFormatParameters(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}


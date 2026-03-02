// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScriptMonitorLocationPrivate {
  /// The unique identifier for the Synthetics private location in New Relic.
  final pulumi.Input<String> guid;
  /// The location's Verified Script Execution password, Only necessary if Verified Script Execution is enabled for the location.
  final pulumi.Input<String>? vsePassword;

  /// Creates a new [ScriptMonitorLocationPrivate].
  /// [guid] The unique identifier for the Synthetics private location in New Relic.
  /// [vsePassword] The location's Verified Script Execution password, Only necessary if Verified Script Execution is enabled for the location.
  ScriptMonitorLocationPrivate({
    required this.guid,
    this.vsePassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': guid,
      'vsePassword': ?vsePassword,
    };
  }

  factory ScriptMonitorLocationPrivate.fromMap(Map<String, dynamic> map) {
    return ScriptMonitorLocationPrivate(
      guid: (map['guid'] as String).input(),
      vsePassword: map['vsePassword'] == null ? null : (map['vsePassword'] as String).input(),
    );
  }
}


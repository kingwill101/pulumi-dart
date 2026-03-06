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
  const ScriptMonitorLocationPrivate({
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
      guid: pulumi.Input.fromValue(map['guid'] as String),
      vsePassword: (() { final guardedValue = map['vsePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


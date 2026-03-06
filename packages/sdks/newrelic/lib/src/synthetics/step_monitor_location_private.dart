// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StepMonitorLocationPrivate {
  /// The unique identifier for the Synthetics private location in New Relic.
  final pulumi.Input<String> guid;
  /// The location's Verified Script Execution password, only necessary if Verified Script Execution is enabled for the location.
  final pulumi.Input<String>? vsePassword;

  /// Creates a new [StepMonitorLocationPrivate].
  /// [guid] The unique identifier for the Synthetics private location in New Relic.
  /// [vsePassword] The location's Verified Script Execution password, only necessary if Verified Script Execution is enabled for the location.
  const StepMonitorLocationPrivate({
    required this.guid,
    this.vsePassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': guid,
      'vsePassword': ?vsePassword,
    };
  }

  factory StepMonitorLocationPrivate.fromMap(Map<String, dynamic> map) {
    return StepMonitorLocationPrivate(
      guid: pulumi.Input.fromValue(map['guid'] as String),
      vsePassword: (() { final guardedValue = map['vsePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


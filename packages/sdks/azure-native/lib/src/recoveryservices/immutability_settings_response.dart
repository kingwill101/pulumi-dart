// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutability Settings of vault
class ImmutabilitySettingsResponse {
  final pulumi.Input<String?>? state;

  /// Creates a new [ImmutabilitySettingsResponse].
  /// [state] Optional.
  const ImmutabilitySettingsResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory ImmutabilitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return ImmutabilitySettingsResponse(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

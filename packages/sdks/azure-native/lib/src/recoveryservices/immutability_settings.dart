// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutability Settings of vault
class ImmutabilitySettings {
  final pulumi.Input<String>? state;

  /// Creates a new [ImmutabilitySettings].
  /// [state] Optional.
  ImmutabilitySettings({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory ImmutabilitySettings.fromMap(Map<String, dynamic> map) {
    return ImmutabilitySettings(
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}


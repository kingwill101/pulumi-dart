// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings concerning lockbox.
class PropertiesLockboxResponse {
  /// lockbox configuration
  final pulumi.Input<String>? state;

  /// Creates a new [PropertiesLockboxResponse].
  /// [state] lockbox configuration
  const PropertiesLockboxResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory PropertiesLockboxResponse.fromMap(Map<String, dynamic> map) {
    return PropertiesLockboxResponse(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

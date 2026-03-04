// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings concerning lockbox.
class PropertiesResponseLockbox {
  /// lockbox configuration
  final pulumi.Input<String>? state;

  /// Creates a new [PropertiesResponseLockbox].
  /// [state] lockbox configuration
  PropertiesResponseLockbox({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory PropertiesResponseLockbox.fromMap(Map<String, dynamic> map) {
    return PropertiesResponseLockbox(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

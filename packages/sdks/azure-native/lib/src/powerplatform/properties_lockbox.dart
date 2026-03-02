// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings concerning lockbox.
class PropertiesLockbox {
  /// lockbox configuration
  final pulumi.Input<String>? state;

  /// Creates a new [PropertiesLockbox].
  /// [state] lockbox configuration
  PropertiesLockbox({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory PropertiesLockbox.fromMap(Map<String, dynamic> map) {
    return PropertiesLockbox(
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}


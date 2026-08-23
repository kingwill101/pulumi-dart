// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceUser {
  /// Sets the device identifier for the user-managed network connection.
  final pulumi.Input<String>? dev;

  /// Creates a new [DomainDevicesInterfaceSourceUser].
  /// [dev] Sets the device identifier for the user-managed network connection.
  const DomainDevicesInterfaceSourceUser({
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
    };
  }

  factory DomainDevicesInterfaceSourceUser.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceUser(
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

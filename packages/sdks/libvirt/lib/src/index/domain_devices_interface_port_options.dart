// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfacePortOptions {
  /// Sets whether the network port's traffic is isolated from others.
  final pulumi.Input<String?>? isolated;

  /// Creates a new [DomainDevicesInterfacePortOptions].
  /// [isolated] Sets whether the network port's traffic is isolated from others.
  const DomainDevicesInterfacePortOptions({
    this.isolated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolated': ?isolated,
    };
  }

  factory DomainDevicesInterfacePortOptions.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfacePortOptions(
      isolated: (() { final guardedValue = map['isolated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

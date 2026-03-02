// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceTarget {
  /// Specifies the device associated with the target interface.
  final pulumi.Input<String> dev;
  /// Controls whether the target interface is managed by the virtual network.
  final pulumi.Input<bool>? managed;

  /// Creates a new [DomainDevicesInterfaceTarget].
  /// [dev] Specifies the device associated with the target interface.
  /// [managed] Controls whether the target interface is managed by the virtual network.
  DomainDevicesInterfaceTarget({
    required this.dev,
    this.managed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
      'managed': ?managed,
    };
  }

  factory DomainDevicesInterfaceTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceTarget(
      dev: (map['dev'] as String).input(),
      managed: map['managed'] == null ? null : (map['managed']! as bool).input(),
    );
  }
}


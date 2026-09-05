// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevBoot {
  /// Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  final pulumi.Input<String?>? loadParm;
  /// Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  final pulumi.Input<double> order;

  /// Creates a new [DomainDevicesHostdevBoot].
  /// [loadParm] Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  /// [order] Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  const DomainDevicesHostdevBoot({
    this.loadParm,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadParm': ?loadParm,
      'order': order,
    };
  }

  factory DomainDevicesHostdevBoot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevBoot(
      loadParm: (() { final guardedValue = map['loadParm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue((map['order'] as num).toDouble()),
    );
  }
}

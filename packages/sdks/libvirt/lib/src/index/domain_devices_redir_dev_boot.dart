// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRedirDevBoot {
  /// Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  final pulumi.Input<String>? loadParm;
  /// Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  final pulumi.Input<double> order;

  /// Creates a new [DomainDevicesRedirDevBoot].
  /// [loadParm] Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  /// [order] Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  DomainDevicesRedirDevBoot({
    this.loadParm,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadParm': ?loadParm,
      'order': order,
    };
  }

  factory DomainDevicesRedirDevBoot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevBoot(
      loadParm: map['loadParm'] == null ? null : (map['loadParm'] as String).input(),
      order: (map['order'] as double).input(),
    );
  }
}


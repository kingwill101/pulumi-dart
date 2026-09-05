// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainQemuOverrideDeviceFrontendProperty {
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String> name;
  /// Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  final pulumi.Input<String?>? type;
  /// Sets the optional value assigned to the named QEMU frontend property.
  final pulumi.Input<String?>? value;

  /// Creates a new [DomainQemuOverrideDeviceFrontendProperty].
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  /// [type] Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  /// [value] Sets the optional value assigned to the named QEMU frontend property.
  const DomainQemuOverrideDeviceFrontendProperty({
    required this.name,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': ?type,
      'value': ?value,
    };
  }

  factory DomainQemuOverrideDeviceFrontendProperty.fromMap(Map<String, dynamic> map) {
    return DomainQemuOverrideDeviceFrontendProperty(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

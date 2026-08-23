// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceFilterRefParameter {
  /// Sets the name of the filter parameter.
  final pulumi.Input<String> name;
  /// Specifies the value associated with the filter parameter.
  final pulumi.Input<String> value;

  /// Creates a new [DomainDevicesInterfaceFilterRefParameter].
  /// [name] Sets the name of the filter parameter.
  /// [value] Specifies the value associated with the filter parameter.
  const DomainDevicesInterfaceFilterRefParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainDevicesInterfaceFilterRefParameter.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceFilterRefParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

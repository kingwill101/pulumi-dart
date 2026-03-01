// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceFilterRefParameter {
  /// Sets the name of the filter parameter.
  final String name;
  /// Specifies the value associated with the filter parameter.
  final String value;

  /// Creates a new [DomainDevicesInterfaceFilterRefParameter].
  /// [name] Sets the name of the filter parameter.
  /// [value] Specifies the value associated with the filter parameter.
  DomainDevicesInterfaceFilterRefParameter({
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
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}


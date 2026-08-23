// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolRbdCommandlineOption {
  /// Sets the unique name for the storage pool, required for identification on the host.
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [PoolRbdCommandlineOption].
  /// [name] Sets the unique name for the storage pool, required for identification on the host.
  /// [value] Required.
  const PoolRbdCommandlineOption({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory PoolRbdCommandlineOption.fromMap(Map<String, dynamic> map) {
    return PoolRbdCommandlineOption(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

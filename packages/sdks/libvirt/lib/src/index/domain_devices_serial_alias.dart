// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSerialAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesSerialAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  const DomainDevicesSerialAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesSerialAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialAlias(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

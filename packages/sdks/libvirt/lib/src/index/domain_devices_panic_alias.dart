// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesPanicAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesPanicAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  const DomainDevicesPanicAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesPanicAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPanicAlias(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

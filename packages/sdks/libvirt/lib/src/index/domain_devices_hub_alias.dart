// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHubAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesHubAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesHubAlias({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DomainDevicesHubAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHubAlias(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

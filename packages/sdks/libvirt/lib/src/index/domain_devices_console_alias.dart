// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesConsoleAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesConsoleAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesConsoleAlias({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DomainDevicesConsoleAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleAlias(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

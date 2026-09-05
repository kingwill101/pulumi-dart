// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesIommUseAlias {
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesIommUseAlias].
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  const DomainDevicesIommUseAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesIommUseAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommUseAlias(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

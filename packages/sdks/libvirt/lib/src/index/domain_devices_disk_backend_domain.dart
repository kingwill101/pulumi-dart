// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackendDomain {
  /// Sets the name of the backend domain associated with the interface, which links the interface to a specific backend configuration.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesDiskBackendDomain].
  /// [name] Sets the name of the backend domain associated with the interface, which links the interface to a specific backend configuration.
  DomainDevicesDiskBackendDomain({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DomainDevicesDiskBackendDomain.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackendDomain(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

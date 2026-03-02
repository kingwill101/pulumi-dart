// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerV1SecretRef {
  /// The name of the secret reference. The reference names must correspond the container type, more details are available [here](https://docs.openstack.org/barbican/stein/api/reference/containers.html).
  final pulumi.Input<String>? name;
  /// The secret reference / where to find the secret, URL.
  final pulumi.Input<String> secretRef;

  /// Creates a new [ContainerV1SecretRef].
  /// [name] The name of the secret reference. The reference names must correspond the container type, more details are available [here](https://docs.openstack.org/barbican/stein/api/reference/containers.html).
  /// [secretRef] The secret reference / where to find the secret, URL.
  ContainerV1SecretRef({
    this.name,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': secretRef,
    };
  }

  factory ContainerV1SecretRef.fromMap(Map<String, dynamic> map) {
    return ContainerV1SecretRef(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secretRef: (map['secretRef'] as String).input(),
    );
  }
}


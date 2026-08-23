// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstancePrivateEndpointProperty {
  /// Resource id of the private endpoint.
  final pulumi.Input<String>? id;

  /// Creates a new [ManagedInstancePrivateEndpointProperty].
  /// [id] Resource id of the private endpoint.
  const ManagedInstancePrivateEndpointProperty({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ManagedInstancePrivateEndpointProperty.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePrivateEndpointProperty(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

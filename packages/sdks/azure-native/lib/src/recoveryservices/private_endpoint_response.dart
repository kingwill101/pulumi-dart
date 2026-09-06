// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Private Endpoint network resource that is linked to the Private Endpoint connection
class PrivateEndpointResponse {
  /// Gets or sets id
  final pulumi.Input<String?>? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Gets or sets id
  const PrivateEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

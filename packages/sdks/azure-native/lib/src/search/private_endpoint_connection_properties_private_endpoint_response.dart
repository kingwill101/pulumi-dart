// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private endpoint resource from Microsoft.Network provider.
class PrivateEndpointConnectionPropertiesPrivateEndpointResponse {
  /// The resource ID of the private endpoint resource from Microsoft.Network provider.
  final pulumi.Input<String?>? id;

  /// Creates a new [PrivateEndpointConnectionPropertiesPrivateEndpointResponse].
  /// [id] The resource ID of the private endpoint resource from Microsoft.Network provider.
  const PrivateEndpointConnectionPropertiesPrivateEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointConnectionPropertiesPrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesPrivateEndpointResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

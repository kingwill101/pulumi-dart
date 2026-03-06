// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private endpoint resource from Microsoft.Network provider.
class PrivateEndpointConnectionPropertiesPrivateEndpoint {
  /// The resource ID of the private endpoint resource from Microsoft.Network provider.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointConnectionPropertiesPrivateEndpoint].
  /// [id] The resource ID of the private endpoint resource from Microsoft.Network provider.
  const PrivateEndpointConnectionPropertiesPrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointConnectionPropertiesPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesPrivateEndpoint(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


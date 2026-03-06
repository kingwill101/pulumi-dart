// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private endpoint resource from Microsoft.Network provider.
class PrivateEndpointConnectionPropertiesResponsePrivateEndpoint {
  /// The resource ID of the private endpoint resource from Microsoft.Network provider.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponsePrivateEndpoint].
  /// [id] The resource ID of the private endpoint resource from Microsoft.Network provider.
  const PrivateEndpointConnectionPropertiesResponsePrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponsePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponsePrivateEndpoint(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private endpoint resource from Microsoft.Network provider.
class PrivateEndpointConnectionPropertiesPrivateEndpoint {
  /// The resource ID of the private endpoint resource from Microsoft.Network provider.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointConnectionPropertiesPrivateEndpoint].
  /// [id] The resource ID of the private endpoint resource from Microsoft.Network provider.
  PrivateEndpointConnectionPropertiesPrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointConnectionPropertiesPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesPrivateEndpoint(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Private Endpoint network resource that is linked to the Private Endpoint connection.
class PrivateEndpointVaultResponse {
  /// Gets or sets id.
  final pulumi.Input<String> id;

  /// Creates a new [PrivateEndpointVaultResponse].
  /// [id] Gets or sets id.
  const PrivateEndpointVaultResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PrivateEndpointVaultResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointVaultResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

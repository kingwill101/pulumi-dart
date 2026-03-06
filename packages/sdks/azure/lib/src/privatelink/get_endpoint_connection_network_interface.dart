// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointConnectionNetworkInterface {
  /// The ID of the network interface associated with the private endpoint.
  final pulumi.Input<String> id;
  /// Specifies the Name of the private endpoint.
  final pulumi.Input<String> name;

  /// Creates a new [GetEndpointConnectionNetworkInterface].
  /// [id] The ID of the network interface associated with the private endpoint.
  /// [name] Specifies the Name of the private endpoint.
  const GetEndpointConnectionNetworkInterface({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetEndpointConnectionNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionNetworkInterface(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


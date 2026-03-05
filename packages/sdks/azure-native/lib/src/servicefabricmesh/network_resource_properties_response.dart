// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties of a network resource.
class NetworkResourcePropertiesResponse {
  /// User readable description of the network.
  final pulumi.Input<String>? description;
  /// The type of a Service Fabric container network.
  /// Expected value is 'NetworkResourceProperties'.
  final pulumi.Input<String> kind;
  /// State of the resource.
  final pulumi.Input<String> provisioningState;
  /// Status of the network.
  final pulumi.Input<String> status;
  /// Gives additional information about the current status of the network.
  final pulumi.Input<String> statusDetails;

  /// Creates a new [NetworkResourcePropertiesResponse].
  /// [description] User readable description of the network.
  /// [kind] The type of a Service Fabric container network.
  /// [provisioningState] State of the resource.
  /// [status] Status of the network.
  /// [statusDetails] Gives additional information about the current status of the network.
  NetworkResourcePropertiesResponse({
    this.description,
    required this.kind,
    required this.provisioningState,
    required this.status,
    required this.statusDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kind': kind,
      'provisioningState': provisioningState,
      'status': status,
      'statusDetails': statusDetails,
    };
  }

  factory NetworkResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResourcePropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusDetails: pulumi.Input.fromValue(map['statusDetails'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_service_gateway_response.dart';

/// IP configuration profile child resource.
class IPConfigurationProfileServiceGatewayResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the IP configuration profile resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the subnet resource to create a container network interface ip configuration.
  final pulumi.Input<SubnetServiceGatewayResponse>? subnet;
  /// Sub Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [IPConfigurationProfileServiceGatewayResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the IP configuration profile resource.
  /// [subnet] The reference to the subnet resource to create a container network interface ip configuration.
  /// [type] Sub Resource type.
  const IPConfigurationProfileServiceGatewayResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetServiceGatewayResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IPConfigurationProfileServiceGatewayResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProfileServiceGatewayResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetServiceGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

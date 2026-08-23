// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response.dart';

/// IP configuration profile child resource.
class IPConfigurationProfileInterfaceEndpointResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The reference of the subnet resource to create a container network interface ip configuration.
  final pulumi.Input<SubnetResponse>? subnet;
  /// Sub Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [IPConfigurationProfileInterfaceEndpointResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the resource.
  /// [subnet] The reference of the subnet resource to create a container network interface ip configuration.
  /// [type] Sub Resource type.
  const IPConfigurationProfileInterfaceEndpointResponse({
    this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IPConfigurationProfileInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProfileInterfaceEndpointResponse(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

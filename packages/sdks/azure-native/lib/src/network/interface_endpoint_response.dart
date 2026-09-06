// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_response.dart';
import 'network_interface_response.dart';
import 'subnet_interface_endpoint_response.dart';

/// Interface endpoint resource.
class InterfaceEndpointResponse {
  /// A reference to the service being brought into the virtual network.
  final pulumi.Input<EndpointServiceResponse?>? endpointService;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint.
  final pulumi.Input<String?>? fqdn;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Gets an array of references to the network interfaces created for this interface endpoint.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// A read-only property that identifies who created this interface endpoint.
  final pulumi.Input<String> owner;
  /// The provisioning state of the interface endpoint. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String> provisioningState;
  /// The ID of the subnet from which the private IP will be allocated.
  final pulumi.Input<SubnetInterfaceEndpointResponse?>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [InterfaceEndpointResponse].
  /// [endpointService] A reference to the service being brought into the virtual network.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [fqdn] A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaces] Gets an array of references to the network interfaces created for this interface endpoint.
  /// [owner] A read-only property that identifies who created this interface endpoint.
  /// [provisioningState] The provisioning state of the interface endpoint. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [subnet] The ID of the subnet from which the private IP will be allocated.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const InterfaceEndpointResponse({
    this.endpointService,
    this.etag,
    this.fqdn,
    this.id,
    this.location,
    required this.name,
    required this.networkInterfaces,
    required this.owner,
    required this.provisioningState,
    this.subnet,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointService': ?pulumi.Input.mapOptionalInputValue<EndpointServiceResponse, Map<String, dynamic>>(endpointService, (value) => value.toMap()),
      'etag': ?etag,
      'fqdn': ?fqdn,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': owner,
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetInterfaceEndpointResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory InterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InterfaceEndpointResponse(
      endpointService: (() { final guardedValue = map['endpointService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

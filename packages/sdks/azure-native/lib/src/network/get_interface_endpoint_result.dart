// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_response.dart';
import 'network_interface_response.dart';
import 'subnet_response.dart';

/// Result data returned by getInterfaceEndpoint.
class GetInterfaceEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A reference to the service being brought into the virtual network.
  final EndpointServiceResponse? endpointService;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint.
  final String? fqdn;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Gets an array of references to the network interfaces created for this interface endpoint.
  final List<NetworkInterfaceResponse> networkInterfaces;
  /// A read-only property that identifies who created this interface endpoint.
  final String owner;
  /// The provisioning state of the interface endpoint. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final String provisioningState;
  /// The ID of the subnet from which the private IP will be allocated.
  final SubnetResponse? subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetInterfaceEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  GetInterfaceEndpointResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'endpointService': ?endpointService?.toMap(),
      'etag': ?etag,
      'fqdn': ?fqdn,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'owner': owner,
      'provisioningState': provisioningState,
      'subnet': ?subnet?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInterfaceEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetInterfaceEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endpointService: (() { final guardedValue = map['endpointService']; if (guardedValue == null) return null; return EndpointServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      owner: map['owner'] as String,
      provisioningState: map['provisioningState'] as String,
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}


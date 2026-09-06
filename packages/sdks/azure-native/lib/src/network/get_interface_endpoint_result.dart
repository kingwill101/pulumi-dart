// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_response.dart';
import 'network_interface_interface_endpoint_response.dart';
import 'subnet_interface_endpoint_response.dart';

/// Result data returned by getInterfaceEndpoint.
class GetInterfaceEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
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
  final String? name;
  /// Gets an array of references to the network interfaces created for this interface endpoint.
  final List<NetworkInterfaceInterfaceEndpointResponse>? networkInterfaces;
  /// A read-only property that identifies who created this interface endpoint.
  final String? owner;
  /// The provisioning state of the interface endpoint. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final String? provisioningState;
  /// The ID of the subnet from which the private IP will be allocated.
  final SubnetInterfaceEndpointResponse? subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

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
  const GetInterfaceEndpointResult({
    this.azureApiVersion,
    this.endpointService,
    this.etag,
    this.fqdn,
    this.id,
    this.location,
    this.name,
    this.networkInterfaces,
    this.owner,
    this.provisioningState,
    this.subnet,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'endpointService': ?endpointService?.toMap(),
      'etag': ?etag,
      'fqdn': ?fqdn,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceInterfaceEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'owner': ?owner,
      'provisioningState': ?provisioningState,
      'subnet': ?subnet?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInterfaceEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetInterfaceEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointService: (() { final guardedValue = map['endpointService']; if (guardedValue == null) return null; return EndpointServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceInterfaceEndpointResponse>(guardedValue, (value) => NetworkInterfaceInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return SubnetInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

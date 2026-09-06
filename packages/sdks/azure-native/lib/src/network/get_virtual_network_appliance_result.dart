// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response_v2.dart';
import 'virtual_network_appliance_ip_configuration_response.dart';

/// Result data returned by getVirtualNetworkAppliance.
class GetVirtualNetworkApplianceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  final String? bandwidthInGbps;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// A list of IPConfigurations of the virtual network appliance.
  final List<VirtualNetworkApplianceIpConfigurationResponse>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the virtual network appliance resource.
  final String? provisioningState;
  /// The resource GUID property of the virtual network appliance resource.
  final String? resourceGuid;
  /// The reference to the subnet resource.
  final SubnetResponseV2? subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetVirtualNetworkApplianceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bandwidthInGbps] Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of IPConfigurations of the virtual network appliance.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the virtual network appliance resource.
  /// [resourceGuid] The resource GUID property of the virtual network appliance resource.
  /// [subnet] The reference to the subnet resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetVirtualNetworkApplianceResult({
    this.azureApiVersion,
    this.bandwidthInGbps,
    this.etag,
    this.id,
    this.ipConfigurations,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.subnet,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'bandwidthInGbps': ?bandwidthInGbps,
      'etag': ?etag,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkApplianceIpConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'subnet': ?subnet?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetVirtualNetworkApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkApplianceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bandwidthInGbps: (() { final guardedValue = map['bandwidthInGbps']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkApplianceIpConfigurationResponse>(guardedValue, (value) => VirtualNetworkApplianceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return SubnetResponseV2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

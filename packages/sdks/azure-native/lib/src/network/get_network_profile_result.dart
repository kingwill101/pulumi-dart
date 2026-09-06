// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_network_interface_configuration_response.dart';
import 'container_network_interface_response.dart';

/// Result data returned by getNetworkProfile.
class GetNetworkProfileResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of chid container network interface configurations.
  final List<ContainerNetworkInterfaceConfigurationResponse>? containerNetworkInterfaceConfigurations;
  /// List of child container network interfaces.
  final List<ContainerNetworkInterfaceResponse>? containerNetworkInterfaces;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the network profile resource.
  final String? provisioningState;
  /// The resource GUID property of the network profile resource.
  final String? resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNetworkProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerNetworkInterfaceConfigurations] List of chid container network interface configurations.
  /// [containerNetworkInterfaces] List of child container network interfaces.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the network profile resource.
  /// [resourceGuid] The resource GUID property of the network profile resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetNetworkProfileResult({
    this.azureApiVersion,
    this.containerNetworkInterfaceConfigurations,
    this.containerNetworkInterfaces,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'containerNetworkInterfaceConfigurations': ?(() { final guardedValue = containerNetworkInterfaceConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerNetworkInterfaceConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'containerNetworkInterfaces': ?(() { final guardedValue = containerNetworkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerNetworkInterfaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkProfileResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkProfileResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerNetworkInterfaceConfigurations: (() { final guardedValue = map['containerNetworkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworkInterfaceConfigurationResponse>(guardedValue, (value) => ContainerNetworkInterfaceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      containerNetworkInterfaces: (() { final guardedValue = map['containerNetworkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworkInterfaceResponse>(guardedValue, (value) => ContainerNetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_endpoint.dart';
import 'extended_location.dart';

/// {@template pulumi_networkcloud_cloud_services_network_args_doc}
/// The set of arguments for CloudServicesNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_cloud_services_network_args_doc}
class CloudServicesNetworkArgs {
  /// The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  final pulumi.Input<List<EgressEndpoint>?>? additionalEgressEndpoints;
  /// The name of the cloud services network.
  final pulumi.Input<String?>? cloudServicesNetworkName;
  /// The indicator of whether the platform default endpoints are allowed for the egress traffic.
  final pulumi.Input<dynamic>? enableDefaultEgressEndpoints;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CloudServicesNetworkArgs].
  /// [additionalEgressEndpoints] The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  /// [cloudServicesNetworkName] The name of the cloud services network.
  /// [enableDefaultEgressEndpoints] The indicator of whether the platform default endpoints are allowed for the egress traffic.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CloudServicesNetworkArgs({
    this.additionalEgressEndpoints,
    this.cloudServicesNetworkName,
    pulumi.Input<dynamic>? enableDefaultEgressEndpoints,
    required this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    this.tags,
  }) : enableDefaultEgressEndpoints = enableDefaultEgressEndpoints ?? pulumi.Input.fromValue('True');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEgressEndpoints': ?pulumi.Input.mapOptionalInputValue<List<EgressEndpoint>, List<Map<String, dynamic>>>(additionalEgressEndpoints, (value) => pulumi.Input.encodeList<EgressEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudServicesNetworkName': ?cloudServicesNetworkName,
      'enableDefaultEgressEndpoints': ?enableDefaultEgressEndpoints,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CloudServicesNetworkArgs.fromMap(Map<String, dynamic> map) {
    return CloudServicesNetworkArgs(
      additionalEgressEndpoints: (() { final guardedValue = map['additionalEgressEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EgressEndpoint>(guardedValue, (value) => EgressEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudServicesNetworkName: (() { final guardedValue = map['cloudServicesNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDefaultEgressEndpoints: (() { final guardedValue = map['enableDefaultEgressEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_zone_config.dart';

/// {@template pulumi_network_private_dns_zone_group_args_doc}
/// The set of arguments for PrivateDnsZoneGroup.
/// {@endtemplate}
/// {@macro pulumi_network_private_dns_zone_group_args_doc}
class PrivateDnsZoneGroupArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// A collection of private dns zone configurations of the private dns zone group.
  final pulumi.Input<List<PrivateDnsZoneConfig>>? privateDnsZoneConfigs;
  /// The name of the private dns zone group.
  final pulumi.Input<String>? privateDnsZoneGroupName;
  /// The name of the private endpoint.
  final pulumi.Input<String> privateEndpointName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateDnsZoneGroupArgs].
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateDnsZoneConfigs] A collection of private dns zone configurations of the private dns zone group.
  /// [privateDnsZoneGroupName] The name of the private dns zone group.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group.
  PrivateDnsZoneGroupArgs({
    this.id,
    this.name,
    this.privateDnsZoneConfigs,
    this.privateDnsZoneGroupName,
    required this.privateEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateDnsZoneConfigs': ?pulumi.Input.mapOptionalInputValue<List<PrivateDnsZoneConfig>, List<Map<String, dynamic>>>(privateDnsZoneConfigs, (value) => pulumi.Input.encodeList<PrivateDnsZoneConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDnsZoneGroupName': ?privateDnsZoneGroupName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateDnsZoneGroupArgs.fromMap(Map<String, dynamic> map) {
    return PrivateDnsZoneGroupArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneConfigs: (() { final guardedValue = map['privateDnsZoneConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateDnsZoneConfig>(guardedValue, (value) => PrivateDnsZoneConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateDnsZoneGroupName: (() { final guardedValue = map['privateDnsZoneGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointName: pulumi.Input.fromValue(map['privateEndpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


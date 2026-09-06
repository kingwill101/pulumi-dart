// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_bridge_security_rule.dart';
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_networkcloud_access_bridge_args_doc}
/// The set of arguments for AccessBridge.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_access_bridge_args_doc}
class AccessBridgeArgs {
  /// The name of the access bridge.
  final pulumi.Input<String?>? accessBridgeName;
  /// The extended location of the resource. This property is required when creating the resource.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation> extendedLocation;
  /// The IPv4 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  final pulumi.Input<String?>? ipv4ConnectedPrefix;
  /// The IPv6 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  final pulumi.Input<String?>? ipv6ConnectedPrefix;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource ID of the internal network in a layer 3 isolation domain containing the IP subnets to use.
  final pulumi.Input<String> networkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The list of security rules enforced by the access bridge.
  final pulumi.Input<List<AccessBridgeSecurityRule>?>? securityRules;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessBridgeArgs].
  /// [accessBridgeName] The name of the access bridge.
  /// [extendedLocation] The extended location of the resource. This property is required when creating the resource.
  /// [ipv4ConnectedPrefix] The IPv4 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  /// [ipv6ConnectedPrefix] The IPv6 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  /// [location] The geo-location where the resource lives
  /// [networkId] The resource ID of the internal network in a layer 3 isolation domain containing the IP subnets to use.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityRules] The list of security rules enforced by the access bridge.
  /// [tags] Resource tags.
  const AccessBridgeArgs({
    this.accessBridgeName,
    required this.extendedLocation,
    this.ipv4ConnectedPrefix,
    this.ipv6ConnectedPrefix,
    this.location,
    required this.networkId,
    required this.resourceGroupName,
    this.securityRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBridgeName': ?accessBridgeName,
      'extendedLocation': pulumi.Input.mapInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'ipv4ConnectedPrefix': ?ipv4ConnectedPrefix,
      'ipv6ConnectedPrefix': ?ipv6ConnectedPrefix,
      'location': ?location,
      'networkId': networkId,
      'resourceGroupName': resourceGroupName,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<AccessBridgeSecurityRule>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<AccessBridgeSecurityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AccessBridgeArgs.fromMap(Map<String, dynamic> map) {
    return AccessBridgeArgs(
      accessBridgeName: (() { final guardedValue = map['accessBridgeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      ipv4ConnectedPrefix: (() { final guardedValue = map['ipv4ConnectedPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6ConnectedPrefix: (() { final guardedValue = map['ipv6ConnectedPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessBridgeSecurityRule>(guardedValue, (value) => AccessBridgeSecurityRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fast_get_azure_service_discovery_get_azure_service_discovery_args_doc}
/// Arguments for getAzureServiceDiscovery.
/// {@endtemplate}
/// {@macro pulumi_fast_get_azure_service_discovery_get_azure_service_discovery_args_doc}
class GetAzureServiceDiscoveryArgs {
  /// Specifies whether to look for public or private IP addresses,default `private`.
  final pulumi.Input<String>? addressRealm;
  /// Specifies whether you are updating your credentials,default `false`.
  final pulumi.Input<bool>? credentialUpdate;
  /// Member is down when fewer than minimum monitors report it healthy.
  final pulumi.Input<String>? minimumMonitors;
  /// Port to be used for Azure service discovery,default `80`.
  final pulumi.Input<int>? port;
  /// Azure Resource Group name.
  final pulumi.Input<String> resourceGroup;
  /// Azure subscription ID.
  final pulumi.Input<String> subscriptionId;
  /// The tag key associated with the node to add to this pool.
  final pulumi.Input<String>? tagKey;
  /// The tag value associated with the node to add to this pool.
  final pulumi.Input<String>? tagValue;
  final pulumi.Input<String>? type;
  /// Action to take when node cannot be detected,default `remove`.
  final pulumi.Input<String>? undetectableAction;
  /// Update interval for service discovery.
  final pulumi.Input<String>? updateInterval;

  /// Creates a new [GetAzureServiceDiscoveryArgs].
  /// [addressRealm] Specifies whether to look for public or private IP addresses,default `private`.
  /// [credentialUpdate] Specifies whether you are updating your credentials,default `false`.
  /// [minimumMonitors] Member is down when fewer than minimum monitors report it healthy.
  /// [port] Port to be used for Azure service discovery,default `80`.
  /// [resourceGroup] Azure Resource Group name.
  /// [subscriptionId] Azure subscription ID.
  /// [tagKey] The tag key associated with the node to add to this pool.
  /// [tagValue] The tag value associated with the node to add to this pool.
  /// [type] Optional.
  /// [undetectableAction] Action to take when node cannot be detected,default `remove`.
  /// [updateInterval] Update interval for service discovery.
  GetAzureServiceDiscoveryArgs({
    this.addressRealm,
    this.credentialUpdate,
    this.minimumMonitors,
    this.port,
    required this.resourceGroup,
    required this.subscriptionId,
    this.tagKey,
    this.tagValue,
    this.type,
    this.undetectableAction,
    this.updateInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'credentialUpdate': ?credentialUpdate,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'resourceGroup': resourceGroup,
      'subscriptionId': subscriptionId,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetAzureServiceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureServiceDiscoveryArgs(
      addressRealm: map['addressRealm'] == null ? null : (map['addressRealm']! as String).input(),
      credentialUpdate: map['credentialUpdate'] == null ? null : (map['credentialUpdate']! as bool).input(),
      minimumMonitors: map['minimumMonitors'] == null ? null : (map['minimumMonitors']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey']! as String).input(),
      tagValue: map['tagValue'] == null ? null : (map['tagValue']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      undetectableAction: map['undetectableAction'] == null ? null : (map['undetectableAction']! as String).input(),
      updateInterval: map['updateInterval'] == null ? null : (map['updateInterval']! as String).input(),
    );
  }
}


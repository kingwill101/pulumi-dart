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
      addressRealm: (() {
        final guardedValue = map['addressRealm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentialUpdate: (() {
        final guardedValue = map['credentialUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      minimumMonitors: (() {
        final guardedValue = map['minimumMonitors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      tagKey: (() {
        final guardedValue = map['tagKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagValue: (() {
        final guardedValue = map['tagValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      undetectableAction: (() {
        final guardedValue = map['undetectableAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateInterval: (() {
        final guardedValue = map['updateInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

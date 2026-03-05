// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fast_get_gce_service_discovery_get_gce_service_discovery_args_doc}
/// Arguments for getGceServiceDiscovery.
/// {@endtemplate}
/// {@macro pulumi_fast_get_gce_service_discovery_get_gce_service_discovery_args_doc}
class GetGceServiceDiscoveryArgs {
  /// Specifies whether to look for public or private IP addresses,default `private`.
  final pulumi.Input<String>? addressRealm;
  /// Specifies whether you are updating your credentials,default `false`.
  final pulumi.Input<bool>? credentialUpdate;
  /// Base 64 encoded service account credentials JSON.
  final pulumi.Input<String>? encodedCredentials;
  /// Member is down when fewer than minimum monitors report it healthy.
  final pulumi.Input<String>? minimumMonitors;
  /// Port to be used for AWS service discovery,default `80`.
  final pulumi.Input<int>? port;
  /// For Google Cloud Engine (GCE) only: The ID of the project in which the members are located.
  final pulumi.Input<String>? projectId;
  /// GCE region in which ADC is running.
  final pulumi.Input<String> region;
  /// The tag key associated with the node to add to this pool.
  final pulumi.Input<String> tagKey;
  /// The tag value associated with the node to add to this pool.
  final pulumi.Input<String> tagValue;
  final pulumi.Input<String>? type;
  /// Action to take when node cannot be detected,default `remove`.
  final pulumi.Input<String>? undetectableAction;
  /// Update interval for service discovery.
  final pulumi.Input<String>? updateInterval;

  /// Creates a new [GetGceServiceDiscoveryArgs].
  /// [addressRealm] Specifies whether to look for public or private IP addresses,default `private`.
  /// [credentialUpdate] Specifies whether you are updating your credentials,default `false`.
  /// [encodedCredentials] Base 64 encoded service account credentials JSON.
  /// [minimumMonitors] Member is down when fewer than minimum monitors report it healthy.
  /// [port] Port to be used for AWS service discovery,default `80`.
  /// [projectId] For Google Cloud Engine (GCE) only: The ID of the project in which the members are located.
  /// [region] GCE region in which ADC is running.
  /// [tagKey] The tag key associated with the node to add to this pool.
  /// [tagValue] The tag value associated with the node to add to this pool.
  /// [type] Optional.
  /// [undetectableAction] Action to take when node cannot be detected,default `remove`.
  /// [updateInterval] Update interval for service discovery.
  GetGceServiceDiscoveryArgs({
    this.addressRealm,
    this.credentialUpdate,
    this.encodedCredentials,
    this.minimumMonitors,
    this.port,
    this.projectId,
    required this.region,
    required this.tagKey,
    required this.tagValue,
    this.type,
    this.undetectableAction,
    this.updateInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'credentialUpdate': ?credentialUpdate,
      'encodedCredentials': ?encodedCredentials,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'projectId': ?projectId,
      'region': region,
      'tagKey': tagKey,
      'tagValue': tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetGceServiceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return GetGceServiceDiscoveryArgs(
      addressRealm: (() { final guardedValue = map['addressRealm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialUpdate: (() { final guardedValue = map['credentialUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encodedCredentials: (() { final guardedValue = map['encodedCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumMonitors: (() { final guardedValue = map['minimumMonitors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      undetectableAction: (() { final guardedValue = map['undetectableAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateInterval: (() { final guardedValue = map['updateInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


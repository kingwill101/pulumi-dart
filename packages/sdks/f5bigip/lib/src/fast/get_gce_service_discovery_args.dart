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
    pulumi.Output<String>? addressRealm,
    pulumi.Output<bool>? credentialUpdate,
    pulumi.Output<String>? encodedCredentials,
    pulumi.Output<String>? minimumMonitors,
    pulumi.Output<int>? port,
    pulumi.Output<String>? projectId,
    required pulumi.Output<String> region,
    required pulumi.Output<String> tagKey,
    required pulumi.Output<String> tagValue,
    pulumi.Output<String>? type,
    pulumi.Output<String>? undetectableAction,
    pulumi.Output<String>? updateInterval,
  }) :
      addressRealm = pulumi.Input.asOptionalInput<String>(addressRealm),
      credentialUpdate = pulumi.Input.asOptionalInput<bool>(credentialUpdate),
      encodedCredentials = pulumi.Input.asOptionalInput<String>(encodedCredentials),
      minimumMonitors = pulumi.Input.asOptionalInput<String>(minimumMonitors),
      port = pulumi.Input.asOptionalInput<int>(port),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asInput<String>(region),
      tagKey = pulumi.Input.asInput<String>(tagKey),
      tagValue = pulumi.Input.asInput<String>(tagValue),
      type = pulumi.Input.asOptionalInput<String>(type),
      undetectableAction = pulumi.Input.asOptionalInput<String>(undetectableAction),
      updateInterval = pulumi.Input.asOptionalInput<String>(updateInterval);

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
      addressRealm: map['addressRealm'] == null ? null : pulumi.Output.create<String>(map['addressRealm'] as String),
      credentialUpdate: map['credentialUpdate'] == null ? null : pulumi.Output.create<bool>(map['credentialUpdate'] as bool),
      encodedCredentials: map['encodedCredentials'] == null ? null : pulumi.Output.create<String>(map['encodedCredentials'] as String),
      minimumMonitors: map['minimumMonitors'] == null ? null : pulumi.Output.create<String>(map['minimumMonitors'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      tagKey: pulumi.Output.create<String>(map['tagKey'] as String),
      tagValue: pulumi.Output.create<String>(map['tagValue'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      undetectableAction: map['undetectableAction'] == null ? null : pulumi.Output.create<String>(map['undetectableAction'] as String),
      updateInterval: map['updateInterval'] == null ? null : pulumi.Output.create<String>(map['updateInterval'] as String),
    );
  }
}


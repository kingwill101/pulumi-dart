// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fast_get_aws_service_discovery_get_aws_service_discovery_args_doc}
/// Arguments for getAwsServiceDiscovery.
/// {@endtemplate}
/// {@macro pulumi_fast_get_aws_service_discovery_get_aws_service_discovery_args_doc}
class GetAwsServiceDiscoveryArgs {
  /// Specifies whether to look for public or private IP addresses,default `private`.
  final pulumi.Input<String>? addressRealm;
  /// Information for discovering AWS nodes that are not in the same region as your BIG-IP (also requires the `aws_secret_access_key` field)
  final pulumi.Input<String>? awsAccessKey;
  /// AWS region in which ADC is running,default Empty string.
  final pulumi.Input<String>? awsRegion;
  /// Information for discovering AWS nodes that are not in the same region as your BIG-IP (also requires the `aws_secret_access_key` field)
  final pulumi.Input<String>? awsSecretAccessKey;
  /// Specifies whether you are updating your credentials,default `false`.
  final pulumi.Input<bool>? credentialUpdate;
  /// AWS externalID field.
  final pulumi.Input<String>? externalId;
  /// Member is down when fewer than minimum monitors report it healthy.
  final pulumi.Input<String>? minimumMonitors;
  /// Port to be used for AWS service discovery,default `80`.
  final pulumi.Input<int>? port;
  /// Assume a role (also requires the `external_id` field)
  final pulumi.Input<String>? roleArn;
  /// The tag key associated with the node to add to this pool.
  final pulumi.Input<String> tagKey;
  /// The tag value associated with the node to add to this pool.
  final pulumi.Input<String> tagValue;
  final pulumi.Input<String>? type;
  /// Action to take when node cannot be detected,default `remove`.
  final pulumi.Input<String>? undetectableAction;
  /// Update interval for service discovery.
  final pulumi.Input<String>? updateInterval;

  /// Creates a new [GetAwsServiceDiscoveryArgs].
  /// [addressRealm] Specifies whether to look for public or private IP addresses,default `private`.
  /// [awsAccessKey] Information for discovering AWS nodes that are not in the same region as your BIG-IP (also requires the `aws_secret_access_key` field)
  /// [awsRegion] AWS region in which ADC is running,default Empty string.
  /// [awsSecretAccessKey] Information for discovering AWS nodes that are not in the same region as your BIG-IP (also requires the `aws_secret_access_key` field)
  /// [credentialUpdate] Specifies whether you are updating your credentials,default `false`.
  /// [externalId] AWS externalID field.
  /// [minimumMonitors] Member is down when fewer than minimum monitors report it healthy.
  /// [port] Port to be used for AWS service discovery,default `80`.
  /// [roleArn] Assume a role (also requires the `external_id` field)
  /// [tagKey] The tag key associated with the node to add to this pool.
  /// [tagValue] The tag value associated with the node to add to this pool.
  /// [type] Optional.
  /// [undetectableAction] Action to take when node cannot be detected,default `remove`.
  /// [updateInterval] Update interval for service discovery.
  GetAwsServiceDiscoveryArgs({
    this.addressRealm,
    this.awsAccessKey,
    this.awsRegion,
    this.awsSecretAccessKey,
    this.credentialUpdate,
    this.externalId,
    this.minimumMonitors,
    this.port,
    this.roleArn,
    required this.tagKey,
    required this.tagValue,
    this.type,
    this.undetectableAction,
    this.updateInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'awsAccessKey': ?awsAccessKey,
      'awsRegion': ?awsRegion,
      'awsSecretAccessKey': ?awsSecretAccessKey,
      'credentialUpdate': ?credentialUpdate,
      'externalId': ?externalId,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'roleArn': ?roleArn,
      'tagKey': tagKey,
      'tagValue': tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetAwsServiceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return GetAwsServiceDiscoveryArgs(
      addressRealm: map['addressRealm'] == null ? null : (map['addressRealm']! as String).input(),
      awsAccessKey: map['awsAccessKey'] == null ? null : (map['awsAccessKey']! as String).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion']! as String).input(),
      awsSecretAccessKey: map['awsSecretAccessKey'] == null ? null : (map['awsSecretAccessKey']! as String).input(),
      credentialUpdate: map['credentialUpdate'] == null ? null : (map['credentialUpdate']! as bool).input(),
      externalId: map['externalId'] == null ? null : (map['externalId']! as String).input(),
      minimumMonitors: map['minimumMonitors'] == null ? null : (map['minimumMonitors']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      tagKey: (map['tagKey'] as String).input(),
      tagValue: (map['tagValue'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      undetectableAction: map['undetectableAction'] == null ? null : (map['undetectableAction']! as String).input(),
      updateInterval: map['updateInterval'] == null ? null : (map['updateInterval']! as String).input(),
    );
  }
}


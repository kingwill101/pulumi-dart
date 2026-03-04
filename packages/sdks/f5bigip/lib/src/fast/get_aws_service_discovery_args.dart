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
      addressRealm: (() {
        final guardedValue = map['addressRealm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsAccessKey: (() {
        final guardedValue = map['awsAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsRegion: (() {
        final guardedValue = map['awsRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsSecretAccessKey: (() {
        final guardedValue = map['awsSecretAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentialUpdate: (() {
        final guardedValue = map['credentialUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
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

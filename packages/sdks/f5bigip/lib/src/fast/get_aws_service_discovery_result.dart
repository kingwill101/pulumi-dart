// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAwsServiceDiscovery.
class GetAwsServiceDiscoveryResult {
  final String? addressRealm;
  final String? awsAccessKey;
  final String awsRegion;
  /// The JSON for AWS service discovery block.
  final String awsSdJson;
  final String? awsSecretAccessKey;
  final bool? credentialUpdate;
  final String externalId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? minimumMonitors;
  final int? port;
  final String roleArn;
  final String tagKey;
  final String tagValue;
  final String? type;
  final String? undetectableAction;
  final String? updateInterval;

  /// Creates a new [GetAwsServiceDiscoveryResult].
  /// [addressRealm] Optional.
  /// [awsAccessKey] Optional.
  /// [awsRegion] Required.
  /// [awsSdJson] The JSON for AWS service discovery block.
  /// [awsSecretAccessKey] Optional.
  /// [credentialUpdate] Optional.
  /// [externalId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumMonitors] Optional.
  /// [port] Optional.
  /// [roleArn] Required.
  /// [tagKey] Required.
  /// [tagValue] Required.
  /// [type] Optional.
  /// [undetectableAction] Optional.
  /// [updateInterval] Optional.
  GetAwsServiceDiscoveryResult({
    this.addressRealm,
    this.awsAccessKey,
    required this.awsRegion,
    required this.awsSdJson,
    this.awsSecretAccessKey,
    this.credentialUpdate,
    required this.externalId,
    required this.id,
    this.minimumMonitors,
    this.port,
    required this.roleArn,
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
      'awsRegion': awsRegion,
      'awsSdJson': awsSdJson,
      'awsSecretAccessKey': ?awsSecretAccessKey,
      'credentialUpdate': ?credentialUpdate,
      'externalId': externalId,
      'id': id,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'roleArn': roleArn,
      'tagKey': tagKey,
      'tagValue': tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetAwsServiceDiscoveryResult.fromMap(Map<String, dynamic> map) {
    return GetAwsServiceDiscoveryResult(
      addressRealm: map['addressRealm'] == null ? null : map['addressRealm']! as String,
      awsAccessKey: map['awsAccessKey'] == null ? null : map['awsAccessKey']! as String,
      awsRegion: map['awsRegion'] as String,
      awsSdJson: map['awsSdJson'] as String,
      awsSecretAccessKey: map['awsSecretAccessKey'] == null ? null : map['awsSecretAccessKey']! as String,
      credentialUpdate: map['credentialUpdate'] == null ? null : map['credentialUpdate']! as bool,
      externalId: map['externalId'] as String,
      id: map['id'] as String,
      minimumMonitors: map['minimumMonitors'] == null ? null : map['minimumMonitors']! as String,
      port: map['port'] == null ? null : map['port']! as int,
      roleArn: map['roleArn'] as String,
      tagKey: map['tagKey'] as String,
      tagValue: map['tagValue'] as String,
      type: map['type'] == null ? null : map['type']! as String,
      undetectableAction: map['undetectableAction'] == null ? null : map['undetectableAction']! as String,
      updateInterval: map['updateInterval'] == null ? null : map['updateInterval']! as String,
    );
  }
}


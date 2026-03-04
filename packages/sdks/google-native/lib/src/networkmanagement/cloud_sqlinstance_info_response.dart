// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Cloud SQL instance.
class CloudSQLInstanceInfoResponse {
  /// Name of a Cloud SQL instance.
  final pulumi.Input<String> displayName;

  /// External IP address of a Cloud SQL instance.
  final pulumi.Input<String> externalIp;

  /// Internal IP address of a Cloud SQL instance.
  final pulumi.Input<String> internalIp;

  /// URI of a Cloud SQL instance network or empty string if the instance does not have one.
  final pulumi.Input<String> networkUri;

  /// Region in which the Cloud SQL instance is running.
  final pulumi.Input<String> region;

  /// URI of a Cloud SQL instance.
  final pulumi.Input<String> uri;

  /// Creates a new [CloudSQLInstanceInfoResponse].
  /// [displayName] Name of a Cloud SQL instance.
  /// [externalIp] External IP address of a Cloud SQL instance.
  /// [internalIp] Internal IP address of a Cloud SQL instance.
  /// [networkUri] URI of a Cloud SQL instance network or empty string if the instance does not have one.
  /// [region] Region in which the Cloud SQL instance is running.
  /// [uri] URI of a Cloud SQL instance.
  CloudSQLInstanceInfoResponse({
    required this.displayName,
    required this.externalIp,
    required this.internalIp,
    required this.networkUri,
    required this.region,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'externalIp': externalIp,
      'internalIp': internalIp,
      'networkUri': networkUri,
      'region': region,
      'uri': uri,
    };
  }

  factory CloudSQLInstanceInfoResponse.fromMap(Map<String, dynamic> map) {
    return CloudSQLInstanceInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      externalIp: pulumi.Input.fromValue(map['externalIp'] as String),
      internalIp: pulumi.Input.fromValue(map['internalIp'] as String),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

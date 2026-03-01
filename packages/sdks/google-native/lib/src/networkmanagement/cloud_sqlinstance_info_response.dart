// ignore_for_file: unused_element, unnecessary_cast


/// For display only. Metadata associated with a Cloud SQL instance.
class CloudSQLInstanceInfoResponse {
  /// Name of a Cloud SQL instance.
  final String displayName;
  /// External IP address of a Cloud SQL instance.
  final String externalIp;
  /// Internal IP address of a Cloud SQL instance.
  final String internalIp;
  /// URI of a Cloud SQL instance network or empty string if the instance does not have one.
  final String networkUri;
  /// Region in which the Cloud SQL instance is running.
  final String region;
  /// URI of a Cloud SQL instance.
  final String uri;

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
      displayName: map['displayName'] as String,
      externalIp: map['externalIp'] as String,
      internalIp: map['internalIp'] as String,
      networkUri: map['networkUri'] as String,
      region: map['region'] as String,
      uri: map['uri'] as String,
    );
  }
}


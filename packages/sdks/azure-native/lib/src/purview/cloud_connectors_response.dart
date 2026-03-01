// ignore_for_file: unused_element, unnecessary_cast


/// External Cloud Service connectors
class CloudConnectorsResponse {
  /// AWS external identifier.
  /// Configured in AWS to allow use of the role arn used for scanning
  final String awsExternalId;

  /// Creates a new [CloudConnectorsResponse].
  /// [awsExternalId] AWS external identifier.
  CloudConnectorsResponse({
    required this.awsExternalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsExternalId': awsExternalId,
    };
  }

  factory CloudConnectorsResponse.fromMap(Map<String, dynamic> map) {
    return CloudConnectorsResponse(
      awsExternalId: map['awsExternalId'] as String,
    );
  }
}


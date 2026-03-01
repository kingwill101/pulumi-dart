// ignore_for_file: unused_element, unnecessary_cast


/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentialsResponseVmmigrationV1alpha1 {
  /// AWS access key ID.
  final String accessKeyId;
  /// Input only. AWS secret access key.
  final String secretAccessKey;
  /// Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  final String sessionToken;

  /// Creates a new [AccessKeyCredentialsResponseVmmigrationV1alpha1].
  /// [accessKeyId] AWS access key ID.
  /// [secretAccessKey] Input only. AWS secret access key.
  /// [sessionToken] Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  AccessKeyCredentialsResponseVmmigrationV1alpha1({
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.sessionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'secretAccessKey': secretAccessKey,
      'sessionToken': sessionToken,
    };
  }

  factory AccessKeyCredentialsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AccessKeyCredentialsResponseVmmigrationV1alpha1(
      accessKeyId: map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] as String,
      sessionToken: map['sessionToken'] as String,
    );
  }
}


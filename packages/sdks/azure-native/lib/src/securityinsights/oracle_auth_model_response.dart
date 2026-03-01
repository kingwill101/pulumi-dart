// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication for Oracle.
class OracleAuthModelResponse {
  /// Content of the PRM file
  final String pemFile;
  /// Public Fingerprint
  final String publicFingerprint;
  /// Oracle tenant ID
  final String tenantId;
  /// Type of paging
  /// Expected value is 'Oracle'.
  final String type;
  /// Oracle user ID
  final String userId;

  /// Creates a new [OracleAuthModelResponse].
  /// [pemFile] Content of the PRM file
  /// [publicFingerprint] Public Fingerprint
  /// [tenantId] Oracle tenant ID
  /// [type] Type of paging
  /// [userId] Oracle user ID
  OracleAuthModelResponse({
    required this.pemFile,
    required this.publicFingerprint,
    required this.tenantId,
    required this.type,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemFile': pemFile,
      'publicFingerprint': publicFingerprint,
      'tenantId': tenantId,
      'type': type,
      'userId': userId,
    };
  }

  factory OracleAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return OracleAuthModelResponse(
      pemFile: map['pemFile'] as String,
      publicFingerprint: map['publicFingerprint'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userId: map['userId'] as String,
    );
  }
}


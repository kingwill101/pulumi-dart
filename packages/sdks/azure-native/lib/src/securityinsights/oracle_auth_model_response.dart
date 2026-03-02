// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication for Oracle.
class OracleAuthModelResponse {
  /// Content of the PRM file
  final pulumi.Input<String> pemFile;
  /// Public Fingerprint
  final pulumi.Input<String> publicFingerprint;
  /// Oracle tenant ID
  final pulumi.Input<String> tenantId;
  /// Type of paging
  /// Expected value is 'Oracle'.
  final pulumi.Input<String> type;
  /// Oracle user ID
  final pulumi.Input<String> userId;

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
      pemFile: (map['pemFile'] as String).input(),
      publicFingerprint: (map['publicFingerprint'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}


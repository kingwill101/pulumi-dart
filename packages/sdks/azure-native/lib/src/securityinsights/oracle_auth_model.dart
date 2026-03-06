// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication for Oracle.
class OracleAuthModel {
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

  /// Creates a new [OracleAuthModel].
  /// [pemFile] Content of the PRM file
  /// [publicFingerprint] Public Fingerprint
  /// [tenantId] Oracle tenant ID
  /// [type] Type of paging
  /// [userId] Oracle user ID
  const OracleAuthModel({
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

  factory OracleAuthModel.fromMap(Map<String, dynamic> map) {
    return OracleAuthModel(
      pemFile: pulumi.Input.fromValue(map['pemFile'] as String),
      publicFingerprint: pulumi.Input.fromValue(map['publicFingerprint'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}


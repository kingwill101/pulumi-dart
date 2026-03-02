// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// Encryption information for a Cloud Spanner database or backup.
class EncryptionInfoResponse {
  /// If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
  final pulumi.Input<StatusResponse> encryptionStatus;
  /// The type of encryption.
  final pulumi.Input<String> encryptionType;
  /// A Cloud KMS key version that is being used to protect the database or backup.
  final pulumi.Input<String> kmsKeyVersion;

  /// Creates a new [EncryptionInfoResponse].
  /// [encryptionStatus] If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
  /// [encryptionType] The type of encryption.
  /// [kmsKeyVersion] A Cloud KMS key version that is being used to protect the database or backup.
  EncryptionInfoResponse({
    required this.encryptionStatus,
    required this.encryptionType,
    required this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionStatus': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(encryptionStatus, (value) => value.toMap()),
      'encryptionType': encryptionType,
      'kmsKeyVersion': kmsKeyVersion,
    };
  }

  factory EncryptionInfoResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponse(
      encryptionStatus: (StatusResponse.fromMap((map['encryptionStatus'] as Map).cast<String, dynamic>())).input(),
      encryptionType: (map['encryptionType'] as String).input(),
      kmsKeyVersion: (map['kmsKeyVersion'] as String).input(),
    );
  }
}


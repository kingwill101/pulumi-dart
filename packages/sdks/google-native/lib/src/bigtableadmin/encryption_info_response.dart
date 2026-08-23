// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// Encryption information for a given resource. If this resource is protected with customer managed encryption, the in-use Cloud Key Management Service (Cloud KMS) key version is specified along with its status.
class EncryptionInfoResponse {
  /// The status of encrypt/decrypt calls on underlying data for this resource. Regardless of status, the existing data is always encrypted at rest.
  final pulumi.Input<StatusResponse> encryptionStatus;
  /// The type of encryption used to protect this resource.
  final pulumi.Input<String> encryptionType;
  /// The version of the Cloud KMS key specified in the parent cluster that is in use for the data underlying this table.
  final pulumi.Input<String> kmsKeyVersion;

  /// Creates a new [EncryptionInfoResponse].
  /// [encryptionStatus] The status of encrypt/decrypt calls on underlying data for this resource. Regardless of status, the existing data is always encrypted at rest.
  /// [encryptionType] The type of encryption used to protect this resource.
  /// [kmsKeyVersion] The version of the Cloud KMS key specified in the parent cluster that is in use for the data underlying this table.
  const EncryptionInfoResponse({
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
      encryptionStatus: pulumi.Input.fromValue(StatusResponse.fromMap((map['encryptionStatus']! as Map).cast<String, dynamic>())),
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      kmsKeyVersion: pulumi.Input.fromValue(map['kmsKeyVersion'] as String),
    );
  }
}

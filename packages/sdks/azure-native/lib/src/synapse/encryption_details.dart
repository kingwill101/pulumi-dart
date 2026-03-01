// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_details.dart';

/// Details of the encryption associated with the workspace
class EncryptionDetails {
  /// Customer Managed Key Details
  final CustomerManagedKeyDetails? cmk;

  /// Creates a new [EncryptionDetails].
  /// [cmk] Customer Managed Key Details
  EncryptionDetails({
    this.cmk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmk': ?cmk == null ? null : cmk!.toMap(),
    };
  }

  factory EncryptionDetails.fromMap(Map<String, dynamic> map) {
    return EncryptionDetails(
      cmk: map['cmk'] == null ? null : CustomerManagedKeyDetails.fromMap((map['cmk'] as Map).cast<String, dynamic>()),
    );
  }
}


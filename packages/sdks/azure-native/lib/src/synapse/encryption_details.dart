// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_details.dart';

/// Details of the encryption associated with the workspace
class EncryptionDetails {
  /// Customer Managed Key Details
  final pulumi.Input<CustomerManagedKeyDetails>? cmk;

  /// Creates a new [EncryptionDetails].
  /// [cmk] Customer Managed Key Details
  EncryptionDetails({
    this.cmk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmk': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyDetails, Map<String, dynamic>>(cmk, (value) => value.toMap()),
    };
  }

  factory EncryptionDetails.fromMap(Map<String, dynamic> map) {
    return EncryptionDetails(
      cmk: (() { final guardedValue = map['cmk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerManagedKeyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


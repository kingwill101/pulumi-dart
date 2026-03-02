// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_details_response.dart';

/// Details of the encryption associated with the workspace
class EncryptionDetailsResponse {
  /// Customer Managed Key Details
  final pulumi.Input<CustomerManagedKeyDetailsResponse>? cmk;
  /// Double Encryption enabled
  final pulumi.Input<bool> doubleEncryptionEnabled;

  /// Creates a new [EncryptionDetailsResponse].
  /// [cmk] Customer Managed Key Details
  /// [doubleEncryptionEnabled] Double Encryption enabled
  EncryptionDetailsResponse({
    this.cmk,
    required this.doubleEncryptionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmk': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyDetailsResponse, Map<String, dynamic>>(cmk, (value) => value.toMap()),
      'doubleEncryptionEnabled': doubleEncryptionEnabled,
    };
  }

  factory EncryptionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionDetailsResponse(
      cmk: map['cmk'] == null ? null : (CustomerManagedKeyDetailsResponse.fromMap((map['cmk'] as Map).cast<String, dynamic>())).input(),
      doubleEncryptionEnabled: (map['doubleEncryptionEnabled'] as bool).input(),
    );
  }
}


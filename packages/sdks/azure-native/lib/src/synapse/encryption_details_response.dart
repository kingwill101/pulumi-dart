// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_details_response.dart';

/// Details of the encryption associated with the workspace
class EncryptionDetailsResponse {
  /// Customer Managed Key Details
  final pulumi.Input<CustomerManagedKeyDetailsResponse?>? cmk;
  /// Double Encryption enabled
  final pulumi.Input<bool> doubleEncryptionEnabled;

  /// Creates a new [EncryptionDetailsResponse].
  /// [cmk] Customer Managed Key Details
  /// [doubleEncryptionEnabled] Double Encryption enabled
  const EncryptionDetailsResponse({
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
      cmk: (() { final guardedValue = map['cmk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerManagedKeyDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      doubleEncryptionEnabled: pulumi.Input.fromValue(map['doubleEncryptionEnabled'] as bool),
    );
  }
}

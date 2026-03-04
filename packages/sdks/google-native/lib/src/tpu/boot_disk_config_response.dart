// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response.dart';

/// Boot disk configurations.
class BootDiskConfigResponse {
  /// Optional. Customer encryption key for boot disk.
  final pulumi.Input<CustomerEncryptionKeyResponse> customerEncryptionKey;

  /// Optional. Whether the boot disk will be created with confidential compute mode.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [BootDiskConfigResponse].
  /// [customerEncryptionKey] Optional. Customer encryption key for boot disk.
  /// [enableConfidentialCompute] Optional. Whether the boot disk will be created with confidential compute mode.
  BootDiskConfigResponse({
    required this.customerEncryptionKey,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEncryptionKey':
          pulumi.Input.mapInputValue<
            CustomerEncryptionKeyResponse,
            Map<String, dynamic>
          >(customerEncryptionKey, (value) => value.toMap()),
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory BootDiskConfigResponse.fromMap(Map<String, dynamic> map) {
    return BootDiskConfigResponse(
      customerEncryptionKey: pulumi.Input.fromValue(
        CustomerEncryptionKeyResponse.fromMap(
          (map['customerEncryptionKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      enableConfidentialCompute: pulumi.Input.fromValue(
        map['enableConfidentialCompute'] as bool,
      ),
    );
  }
}

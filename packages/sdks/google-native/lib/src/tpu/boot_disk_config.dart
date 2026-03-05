// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key.dart';

/// Boot disk configurations.
class BootDiskConfig {
  /// Optional. Customer encryption key for boot disk.
  final pulumi.Input<CustomerEncryptionKey>? customerEncryptionKey;
  /// Optional. Whether the boot disk will be created with confidential compute mode.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [BootDiskConfig].
  /// [customerEncryptionKey] Optional. Customer encryption key for boot disk.
  /// [enableConfidentialCompute] Optional. Whether the boot disk will be created with confidential compute mode.
  BootDiskConfig({
    this.customerEncryptionKey,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(customerEncryptionKey, (value) => value.toMap()),
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory BootDiskConfig.fromMap(Map<String, dynamic> map) {
    return BootDiskConfig(
      customerEncryptionKey: (() { final guardedValue = map['customerEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


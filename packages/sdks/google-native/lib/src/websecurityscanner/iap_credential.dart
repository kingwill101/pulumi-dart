// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iap_test_service_account_info.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredential {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final pulumi.Input<IapTestServiceAccountInfo>? iapTestServiceAccountInfo;

  /// Creates a new [IapCredential].
  /// [iapTestServiceAccountInfo] Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  const IapCredential({
    this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iapTestServiceAccountInfo': ?pulumi.Input.mapOptionalInputValue<IapTestServiceAccountInfo, Map<String, dynamic>>(iapTestServiceAccountInfo, (value) => value.toMap()),
    };
  }

  factory IapCredential.fromMap(Map<String, dynamic> map) {
    return IapCredential(
      iapTestServiceAccountInfo: (() { final guardedValue = map['iapTestServiceAccountInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IapTestServiceAccountInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

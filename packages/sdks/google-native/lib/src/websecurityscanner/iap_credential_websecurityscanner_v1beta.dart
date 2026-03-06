// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iap_test_service_account_info_websecurityscanner_v1beta.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredentialWebsecurityscannerV1beta {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final pulumi.Input<IapTestServiceAccountInfoWebsecurityscannerV1beta>? iapTestServiceAccountInfo;

  /// Creates a new [IapCredentialWebsecurityscannerV1beta].
  /// [iapTestServiceAccountInfo] Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  const IapCredentialWebsecurityscannerV1beta({
    this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iapTestServiceAccountInfo': ?pulumi.Input.mapOptionalInputValue<IapTestServiceAccountInfoWebsecurityscannerV1beta, Map<String, dynamic>>(iapTestServiceAccountInfo, (value) => value.toMap()),
    };
  }

  factory IapCredentialWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return IapCredentialWebsecurityscannerV1beta(
      iapTestServiceAccountInfo: (() { final guardedValue = map['iapTestServiceAccountInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IapTestServiceAccountInfoWebsecurityscannerV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


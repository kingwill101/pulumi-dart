// ignore_for_file: unused_element, unnecessary_cast

import 'iap_test_service_account_info_response.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredentialResponse {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final IapTestServiceAccountInfoResponse iapTestServiceAccountInfo;

  /// Creates a new [IapCredentialResponse].
  /// [iapTestServiceAccountInfo] Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  IapCredentialResponse({
    required this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iapTestServiceAccountInfo': iapTestServiceAccountInfo.toMap(),
    };
  }

  factory IapCredentialResponse.fromMap(Map<String, dynamic> map) {
    return IapCredentialResponse(
      iapTestServiceAccountInfo: IapTestServiceAccountInfoResponse.fromMap((map['iapTestServiceAccountInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


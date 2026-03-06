// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iap_test_service_account_info_response.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredentialResponse {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final pulumi.Input<IapTestServiceAccountInfoResponse> iapTestServiceAccountInfo;

  /// Creates a new [IapCredentialResponse].
  /// [iapTestServiceAccountInfo] Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  const IapCredentialResponse({
    required this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iapTestServiceAccountInfo': pulumi.Input.mapInputValue<IapTestServiceAccountInfoResponse, Map<String, dynamic>>(iapTestServiceAccountInfo, (value) => value.toMap()),
    };
  }

  factory IapCredentialResponse.fromMap(Map<String, dynamic> map) {
    return IapCredentialResponse(
      iapTestServiceAccountInfo: pulumi.Input.fromValue(IapTestServiceAccountInfoResponse.fromMap((map['iapTestServiceAccountInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


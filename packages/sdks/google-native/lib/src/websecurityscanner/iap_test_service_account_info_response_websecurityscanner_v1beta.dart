// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfoResponseWebsecurityscannerV1beta {
  /// Describes OAuth2 Client ID of resources protected by Identity-Aware-Proxy(IAP).
  final pulumi.Input<String> targetAudienceClientId;

  /// Creates a new [IapTestServiceAccountInfoResponseWebsecurityscannerV1beta].
  /// [targetAudienceClientId] Describes OAuth2 Client ID of resources protected by Identity-Aware-Proxy(IAP).
  const IapTestServiceAccountInfoResponseWebsecurityscannerV1beta({
    required this.targetAudienceClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetAudienceClientId': targetAudienceClientId,
    };
  }

  factory IapTestServiceAccountInfoResponseWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return IapTestServiceAccountInfoResponseWebsecurityscannerV1beta(
      targetAudienceClientId: pulumi.Input.fromValue(map['targetAudienceClientId'] as String),
    );
  }
}


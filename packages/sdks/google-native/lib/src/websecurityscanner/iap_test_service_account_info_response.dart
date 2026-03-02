// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfoResponse {
  /// Describes OAuth2 client id of resources protected by Identity-Aware-Proxy (IAP).
  final pulumi.Input<String> targetAudienceClientId;

  /// Creates a new [IapTestServiceAccountInfoResponse].
  /// [targetAudienceClientId] Describes OAuth2 client id of resources protected by Identity-Aware-Proxy (IAP).
  IapTestServiceAccountInfoResponse({
    required this.targetAudienceClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetAudienceClientId': targetAudienceClientId,
    };
  }

  factory IapTestServiceAccountInfoResponse.fromMap(Map<String, dynamic> map) {
    return IapTestServiceAccountInfoResponse(
      targetAudienceClientId: (map['targetAudienceClientId'] as String).input(),
    );
  }
}


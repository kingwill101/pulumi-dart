// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationBoxBoxServerAuthentication {
  /// Box Enterprise ID from Admin Console &gt; Accounts & Billing.
  final pulumi.Input<String> enterpriseId;

  /// Creates a new [ZeroTrustCasbIntegrationBoxBoxServerAuthentication].
  /// [enterpriseId] Box Enterprise ID from Admin Console &gt; Accounts & Billing.
  const ZeroTrustCasbIntegrationBoxBoxServerAuthentication({
    required this.enterpriseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseId': enterpriseId,
    };
  }

  factory ZeroTrustCasbIntegrationBoxBoxServerAuthentication.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationBoxBoxServerAuthentication(
      enterpriseId: pulumi.Input.fromValue(map['enterpriseId'] as String),
    );
  }
}

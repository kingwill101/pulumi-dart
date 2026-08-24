// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireAzureAd {
  /// The ID of an Azure group.
  final pulumi.Input<String> id;
  /// The ID of your Azure identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [ZeroTrustAccessPolicyRequireAzureAd].
  /// [id] The ID of an Azure group.
  /// [identityProviderId] The ID of your Azure identity provider.
  const ZeroTrustAccessPolicyRequireAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identityProviderId': identityProviderId,
    };
  }

  factory ZeroTrustAccessPolicyRequireAzureAd.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireAzureAd(
      id: pulumi.Input.fromValue(map['id'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}

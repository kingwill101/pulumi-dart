// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeAzureAd {
  /// The ID of an Azure group.
  final pulumi.Input<String> id;
  /// The ID of your Azure identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeAzureAd].
  /// [id] The ID of an Azure group.
  /// [identityProviderId] The ID of your Azure identity provider.
  const GetZeroTrustAccessPoliciesResultIncludeAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identityProviderId': identityProviderId,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeAzureAd.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeAzureAd(
      id: pulumi.Input.fromValue(map['id'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}

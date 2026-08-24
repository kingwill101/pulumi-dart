// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeOidc {
  /// The name of the OIDC claim.
  final pulumi.Input<String> claimName;
  /// The OIDC claim value to look for.
  final pulumi.Input<String> claimValue;
  /// The ID of your OIDC identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [ZeroTrustAccessGroupExcludeOidc].
  /// [claimName] The name of the OIDC claim.
  /// [claimValue] The OIDC claim value to look for.
  /// [identityProviderId] The ID of your OIDC identity provider.
  const ZeroTrustAccessGroupExcludeOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimName': claimName,
      'claimValue': claimValue,
      'identityProviderId': identityProviderId,
    };
  }

  factory ZeroTrustAccessGroupExcludeOidc.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeOidc(
      claimName: pulumi.Input.fromValue(map['claimName'] as String),
      claimValue: pulumi.Input.fromValue(map['claimValue'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}

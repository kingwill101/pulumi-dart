// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeGithubOrganization {
  /// The ID of your Github identity provider.
  final pulumi.Input<String> identityProviderId;
  /// The name of the organization.
  final pulumi.Input<String> name;
  /// The name of the team
  final pulumi.Input<String?>? team;

  /// Creates a new [ZeroTrustAccessPolicyExcludeGithubOrganization].
  /// [identityProviderId] The ID of your Github identity provider.
  /// [name] The name of the organization.
  /// [team] The name of the team
  const ZeroTrustAccessPolicyExcludeGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderId': identityProviderId,
      'name': name,
      'team': ?team,
    };
  }

  factory ZeroTrustAccessPolicyExcludeGithubOrganization.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeGithubOrganization(
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      team: (() { final guardedValue = map['team']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

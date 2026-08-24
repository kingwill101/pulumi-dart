// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeGithubOrganization {
  /// The ID of your Github identity provider.
  final pulumi.Input<String> identityProviderId;
  /// The name of the organization.
  final pulumi.Input<String> name;
  /// The name of the team
  final pulumi.Input<String> team;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeGithubOrganization].
  /// [identityProviderId] The ID of your Github identity provider.
  /// [name] The name of the organization.
  /// [team] The name of the team
  const GetZeroTrustAccessPoliciesResultIncludeGithubOrganization({
    required this.identityProviderId,
    required this.name,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderId': identityProviderId,
      'name': name,
      'team': team,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeGithubOrganization.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeGithubOrganization(
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      team: pulumi.Input.fromValue(map['team'] as String),
    );
  }
}

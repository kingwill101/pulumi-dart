// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organization_get_organization_args_doc}
/// Arguments for getOrganization.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organization_get_organization_args_doc}
class GetOrganizationArgs {
  /// The domain name of the Organization.
  ///
  /// > **NOTE:** One of `organization` or `domain` must be specified.
  final pulumi.Input<String>? domain;
  /// The Organization's numeric ID, including an optional `organizations/` prefix.
  final pulumi.Input<String>? organization;

  /// Creates a new [GetOrganizationArgs].
  /// [domain] The domain name of the Organization.
  /// [organization] The Organization's numeric ID, including an optional `organizations/` prefix.
  GetOrganizationArgs({
    this.domain,
    this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'organization': ?organization,
    };
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
    );
  }
}


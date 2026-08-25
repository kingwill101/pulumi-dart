// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organization_get_organization_args_doc}
/// Arguments for getOrganization.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organization_get_organization_args_doc}
class GetOrganizationArgs {
  /// The domain name of the Organization.
  ///
  /// &gt; **NOTE:** One of `organization` or `domain` must be specified.
  final pulumi.Input<String?>? domain;
  /// The Organization's numeric ID, including an optional `organizations/` prefix.
  final pulumi.Input<String?>? organization;

  /// Creates a new [GetOrganizationArgs].
  /// [domain] The domain name of the Organization.
  /// [organization] The Organization's numeric ID, including an optional `organizations/` prefix.
  const GetOrganizationArgs({
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
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

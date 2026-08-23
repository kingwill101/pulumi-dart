// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_default_organization_args_doc}
/// The set of arguments for DefaultOrganization.
/// {@endtemplate}
/// {@macro pulumi_api_default_organization_args_doc}
class DefaultOrganizationArgs {
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [DefaultOrganizationArgs].
  /// [orgName] The organization name
  const DefaultOrganizationArgs({
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgName': orgName,
    };
  }

  factory DefaultOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultOrganizationArgs(
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}

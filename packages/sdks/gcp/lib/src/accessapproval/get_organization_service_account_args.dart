// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accessapproval_get_organization_service_account_get_organization_service_account_args_doc}
/// Arguments for getOrganizationServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_accessapproval_get_organization_service_account_get_organization_service_account_args_doc}
class GetOrganizationServiceAccountArgs {
  /// The organization ID the service account was created for.
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationServiceAccountArgs].
  /// [organizationId] The organization ID the service account was created for.
  GetOrganizationServiceAccountArgs({
    required pulumi.Output<String> organizationId,
  }) :
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationServiceAccountArgs(
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}


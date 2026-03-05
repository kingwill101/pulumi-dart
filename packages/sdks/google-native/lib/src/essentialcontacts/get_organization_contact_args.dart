// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_v1_get_organization_contact_args_doc}
/// Arguments for getOrganizationContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_get_organization_contact_args_doc}
class GetOrganizationContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationContactArgs].
  /// [contactId] Required.
  /// [organizationId] Required.
  GetOrganizationContactArgs({
    required this.contactId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationContactArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationContactArgs(
      contactId: pulumi.Input.fromValue(map['contactId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}


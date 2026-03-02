// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotcentral_organization_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_iotcentral_organization_organization_args_doc}
class OrganizationArgs {
  /// Custom `display_name` for the organization.
  final pulumi.Input<String> displayName;
  /// The application `id`. Changing this forces a new resource to be created.
  final pulumi.Input<String> iotcentralApplicationId;
  /// The ID of the organization. Changing this forces a new resource to be created.
  final pulumi.Input<String> organizationId;
  /// The `organization_id` of the parent organization. Changing this forces a new resource to be created.
  final pulumi.Input<String>? parentOrganizationId;

  /// Creates a new [OrganizationArgs].
  /// [displayName] Custom `display_name` for the organization.
  /// [iotcentralApplicationId] The application `id`. Changing this forces a new resource to be created.
  /// [organizationId] The ID of the organization. Changing this forces a new resource to be created.
  /// [parentOrganizationId] The `organization_id` of the parent organization. Changing this forces a new resource to be created.
  OrganizationArgs({
    required this.displayName,
    required this.iotcentralApplicationId,
    required this.organizationId,
    this.parentOrganizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'iotcentralApplicationId': iotcentralApplicationId,
      'organizationId': organizationId,
      'parentOrganizationId': ?parentOrganizationId,
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      displayName: (map['displayName'] as String).input(),
      iotcentralApplicationId: (map['iotcentralApplicationId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      parentOrganizationId: map['parentOrganizationId'] == null ? null : (map['parentOrganizationId']! as String).input(),
    );
  }
}


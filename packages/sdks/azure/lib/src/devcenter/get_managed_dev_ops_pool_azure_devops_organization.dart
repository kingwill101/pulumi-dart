// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_azure_devops_organization_organization.dart';
import 'get_managed_dev_ops_pool_azure_devops_organization_permission.dart';

class GetManagedDevOpsPoolAzureDevopsOrganization {
  /// One or more `organization` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolAzureDevopsOrganizationOrganization>> organizations;
  /// A `permission` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolAzureDevopsOrganizationPermission>> permissions;

  /// Creates a new [GetManagedDevOpsPoolAzureDevopsOrganization].
  /// [organizations] One or more `organization` blocks as defined below.
  /// [permissions] A `permission` block as defined below.
  const GetManagedDevOpsPoolAzureDevopsOrganization({
    required this.organizations,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizations': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolAzureDevopsOrganizationOrganization>, List<Map<String, dynamic>>>(organizations, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolAzureDevopsOrganizationOrganization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissions': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolAzureDevopsOrganizationPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolAzureDevopsOrganizationPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDevOpsPoolAzureDevopsOrganization.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolAzureDevopsOrganization(
      organizations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolAzureDevopsOrganizationOrganization>(map['organizations']!, (value) => GetManagedDevOpsPoolAzureDevopsOrganizationOrganization.fromMap((value as Map).cast<String, dynamic>()))),
      permissions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolAzureDevopsOrganizationPermission>(map['permissions']!, (value) => GetManagedDevOpsPoolAzureDevopsOrganizationPermission.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

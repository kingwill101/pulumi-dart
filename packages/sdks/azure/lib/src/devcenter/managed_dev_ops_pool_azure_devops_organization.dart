// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_azure_devops_organization_organization.dart';
import 'managed_dev_ops_pool_azure_devops_organization_permission.dart';

class ManagedDevOpsPoolAzureDevopsOrganization {
  /// One or more `organization` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolAzureDevopsOrganizationOrganization>> organizations;
  /// A `permission` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ManagedDevOpsPoolAzureDevopsOrganizationPermission>? permission;

  /// Creates a new [ManagedDevOpsPoolAzureDevopsOrganization].
  /// [organizations] One or more `organization` blocks as defined below.
  /// [permission] A `permission` block as defined below. Changing this forces a new resource to be created.
  const ManagedDevOpsPoolAzureDevopsOrganization({
    required this.organizations,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizations': pulumi.Input.mapInputValue<List<ManagedDevOpsPoolAzureDevopsOrganizationOrganization>, List<Map<String, dynamic>>>(organizations, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolAzureDevopsOrganizationOrganization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permission': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolAzureDevopsOrganizationPermission, Map<String, dynamic>>(permission, (value) => value.toMap()),
    };
  }

  factory ManagedDevOpsPoolAzureDevopsOrganization.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolAzureDevopsOrganization(
      organizations: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolAzureDevopsOrganizationOrganization>(map['organizations']!, (value) => ManagedDevOpsPoolAzureDevopsOrganizationOrganization.fromMap((value as Map).cast<String, dynamic>()))),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolAzureDevopsOrganizationPermission.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

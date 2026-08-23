// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_azure_devops_organization_permission_administrator_account.dart';

class GetManagedDevOpsPoolAzureDevopsOrganizationPermission {
  /// An `administratorAccount` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount>> administratorAccounts;
  /// The type of Azure DevOps pool permission.
  final pulumi.Input<String> kind;

  /// Creates a new [GetManagedDevOpsPoolAzureDevopsOrganizationPermission].
  /// [administratorAccounts] An `administratorAccount` block as defined below.
  /// [kind] The type of Azure DevOps pool permission.
  const GetManagedDevOpsPoolAzureDevopsOrganizationPermission({
    required this.administratorAccounts,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorAccounts': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount>, List<Map<String, dynamic>>>(administratorAccounts, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
    };
  }

  factory GetManagedDevOpsPoolAzureDevopsOrganizationPermission.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolAzureDevopsOrganizationPermission(
      administratorAccounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount>(map['administratorAccounts']!, (value) => GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

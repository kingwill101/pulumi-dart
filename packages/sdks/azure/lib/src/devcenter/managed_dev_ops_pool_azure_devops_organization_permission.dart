// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_azure_devops_organization_permission_administrator_account.dart';

class ManagedDevOpsPoolAzureDevopsOrganizationPermission {
  /// An `administratorAccount` block as defined below. This block is only valid when `kind` is set to `SpecificAccounts`. Changing this forces a new resource to be created.
  final pulumi.Input<ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount>? administratorAccount;
  /// Determines who has admin permissions to the Azure DevOps pool. Possible values are `Inherit` and `SpecificAccounts`. Changing this forces a new resource to be created.
  final pulumi.Input<String> kind;

  /// Creates a new [ManagedDevOpsPoolAzureDevopsOrganizationPermission].
  /// [administratorAccount] An `administratorAccount` block as defined below. This block is only valid when `kind` is set to `SpecificAccounts`. Changing this forces a new resource to be created.
  /// [kind] Determines who has admin permissions to the Azure DevOps pool. Possible values are `Inherit` and `SpecificAccounts`. Changing this forces a new resource to be created.
  const ManagedDevOpsPoolAzureDevopsOrganizationPermission({
    this.administratorAccount,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorAccount': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount, Map<String, dynamic>>(administratorAccount, (value) => value.toMap()),
      'kind': kind,
    };
  }

  factory ManagedDevOpsPoolAzureDevopsOrganizationPermission.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolAzureDevopsOrganizationPermission(
      administratorAccount: (() { final guardedValue = map['administratorAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

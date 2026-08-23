// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount {
  /// Specifies a list of group email addresses. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? groups;
  /// Specifies a list of user email addresses. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of `groups` and `users` must be specified.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount].
  /// [groups] Specifies a list of group email addresses. Changing this forces a new resource to be created.
  /// [users] Specifies a list of user email addresses. Changing this forces a new resource to be created.
  const ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount({
    this.groups,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'users': ?users,
    };
  }

  factory ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

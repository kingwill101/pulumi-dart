// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount {
  /// A list of group email addresses.
  final pulumi.Input<List<String>> groups;
  /// A list of user email addresses.
  final pulumi.Input<List<String>> users;

  /// Creates a new [GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount].
  /// [groups] A list of group email addresses.
  /// [users] A list of user email addresses.
  const GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount({
    required this.groups,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups,
      'users': users,
    };
  }

  factory GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolAzureDevopsOrganizationPermissionAdministratorAccount(
      groups: pulumi.Input.fromValue((map['groups'] as List).cast<String>()),
      users: pulumi.Input.fromValue((map['users'] as List).cast<String>()),
    );
  }
}

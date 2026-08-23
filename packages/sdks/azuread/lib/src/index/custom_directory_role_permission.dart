// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomDirectoryRolePermission {
  /// A set of tasks that can be performed on a resource. For more information, see the [Permissions Reference](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference) documentation.
  final pulumi.Input<List<String>> allowedResourceActions;

  /// Creates a new [CustomDirectoryRolePermission].
  /// [allowedResourceActions] A set of tasks that can be performed on a resource. For more information, see the [Permissions Reference](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference) documentation.
  const CustomDirectoryRolePermission({
    required this.allowedResourceActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedResourceActions': allowedResourceActions,
    };
  }

  factory CustomDirectoryRolePermission.fromMap(Map<String, dynamic> map) {
    return CustomDirectoryRolePermission(
      allowedResourceActions: pulumi.Input.fromValue((map['allowedResourceActions'] as List).cast<String>()),
    );
  }
}

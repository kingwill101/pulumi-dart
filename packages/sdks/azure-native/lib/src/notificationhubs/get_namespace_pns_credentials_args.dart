// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_namespace_pns_credentials_args_doc}
/// Arguments for getNamespacePnsCredentials.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_namespace_pns_credentials_args_doc}
class GetNamespacePnsCredentialsArgs {
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespacePnsCredentialsArgs].
  /// [namespaceName] Namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNamespacePnsCredentialsArgs({
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespacePnsCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespacePnsCredentialsArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


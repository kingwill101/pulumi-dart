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
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespacePnsCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespacePnsCredentialsArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


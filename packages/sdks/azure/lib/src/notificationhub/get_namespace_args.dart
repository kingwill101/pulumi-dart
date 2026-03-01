// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhub_get_namespace_get_namespace_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_notificationhub_get_namespace_get_namespace_args_doc}
class GetNamespaceArgs {
  /// Specifies the Name of the Notification Hub Namespace.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Resource Group within which the Notification Hub exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceArgs].
  /// [name] Specifies the Name of the Notification Hub Namespace.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the Notification Hub exists.
  GetNamespaceArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


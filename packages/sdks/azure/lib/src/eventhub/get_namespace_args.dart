// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_namespace_get_namespace_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_namespace_get_namespace_args_doc}
class GetNamespaceArgs {
  /// The name of the EventHub Namespace.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the EventHub Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceArgs].
  /// [name] The name of the EventHub Namespace.
  /// [resourceGroupName] The Name of the Resource Group where the EventHub Namespace exists.
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


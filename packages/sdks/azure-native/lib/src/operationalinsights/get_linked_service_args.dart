// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_linked_service_args_doc}
/// Arguments for getLinkedService.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_linked_service_args_doc}
class GetLinkedServiceArgs {
  /// Name of the linked service.
  final pulumi.Input<String> linkedServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetLinkedServiceArgs].
  /// [linkedServiceName] Name of the linked service.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetLinkedServiceArgs({
    required pulumi.Output<String> linkedServiceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      linkedServiceName = pulumi.Input.asInput<String>(linkedServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedServiceArgs(
      linkedServiceName: pulumi.Output.create<String>(map['linkedServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}


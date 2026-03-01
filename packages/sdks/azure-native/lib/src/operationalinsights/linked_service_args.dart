// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_linked_service_args_doc}
/// The set of arguments for LinkedService.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_linked_service_args_doc}
class LinkedServiceArgs {
  /// Name of the linkedServices resource
  final pulumi.Input<String>? linkedServiceName;
  /// The provisioning state of the linked service.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access
  final pulumi.Input<String>? resourceId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;
  /// The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access
  final pulumi.Input<String>? writeAccessResourceId;

  /// Creates a new [LinkedServiceArgs].
  /// [linkedServiceName] Name of the linkedServices resource
  /// [provisioningState] The provisioning state of the linked service.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  /// [writeAccessResourceId] The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access
  LinkedServiceArgs({
    pulumi.Output<String>? linkedServiceName,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
    pulumi.Output<String>? writeAccessResourceId,
  }) :
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName),
      writeAccessResourceId = pulumi.Input.asOptionalInput<String>(writeAccessResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': ?linkedServiceName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'tags': ?tags,
      'workspaceName': workspaceName,
      'writeAccessResourceId': ?writeAccessResourceId,
    };
  }

  factory LinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceArgs(
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
      writeAccessResourceId: map['writeAccessResourceId'] == null ? null : pulumi.Output.create<String>(map['writeAccessResourceId'] as String),
    );
  }
}


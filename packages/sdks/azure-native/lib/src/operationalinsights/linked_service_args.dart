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
    this.linkedServiceName,
    this.provisioningState,
    required this.resourceGroupName,
    this.resourceId,
    this.tags,
    required this.workspaceName,
    this.writeAccessResourceId,
  });

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
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
      writeAccessResourceId: (() {
        final guardedValue = map['writeAccessResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

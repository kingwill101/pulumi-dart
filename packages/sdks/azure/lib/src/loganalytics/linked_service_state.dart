// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedService resources.
class LinkedServiceState {
  /// The generated name of the Linked Service. The format for this attribute is always `&lt;workspace name&gt;/&lt;linked service type&gt;`(e.g. `workspace1/Automation` or `workspace1/Cluster`)
  final pulumi.Input<String>? name;

  /// The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource.
  final pulumi.Input<String>? readAccessId;

  /// The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource.
  final pulumi.Input<String>? workspaceId;

  /// The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource.
  ///
  /// &gt; **Note:** You must define at least one of the above access resource id attributes (e.g. `read_access_id` or `write_access_id`).
  final pulumi.Input<String>? writeAccessId;

  /// Creates a new [LinkedServiceState].
  /// [name] The generated name of the Linked Service. The format for this attribute is always `&lt;workspace name&gt;/&lt;linked service type&gt;`(e.g. `workspace1/Automation` or `workspace1/Cluster`)
  /// [readAccessId] The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created.
  /// [workspaceId] The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource.
  /// [writeAccessId] The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource.
  LinkedServiceState({
    this.name,
    this.readAccessId,
    this.resourceGroupName,
    this.workspaceId,
    this.writeAccessId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'readAccessId': ?readAccessId,
      'resourceGroupName': ?resourceGroupName,
      'workspaceId': ?workspaceId,
      'writeAccessId': ?writeAccessId,
    };
  }

  factory LinkedServiceState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readAccessId: (() {
        final guardedValue = map['readAccessId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      writeAccessId: (() {
        final guardedValue = map['writeAccessId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

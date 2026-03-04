// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_sync_set_args_doc}
/// The set of arguments for SyncSet.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_sync_set_args_doc}
class SyncSetArgs {
  /// The name of the SyncSet resource.
  final pulumi.Input<String>? childResourceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;

  /// Resources represents the SyncSets configuration.
  final pulumi.Input<String>? resources;

  /// Creates a new [SyncSetArgs].
  /// [childResourceName] The name of the SyncSet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  /// [resources] Resources represents the SyncSets configuration.
  SyncSetArgs({
    this.childResourceName,
    required this.resourceGroupName,
    required this.resourceName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': ?childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resources': ?resources,
    };
  }

  factory SyncSetArgs.fromMap(Map<String, dynamic> map) {
    return SyncSetArgs(
      childResourceName: (() {
        final guardedValue = map['childResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'online_experimentation_workspace_properties.dart';
import 'online_experimentation_workspace_sku.dart';

/// {@template pulumi_onlineexperimentation_online_experimentation_workspace_args_doc}
/// The set of arguments for OnlineExperimentationWorkspace.
/// {@endtemplate}
/// {@macro pulumi_onlineexperimentation_online_experimentation_workspace_args_doc}
class OnlineExperimentationWorkspaceArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The resource-specific properties for this resource.
  final pulumi.Input<OnlineExperimentationWorkspaceProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final pulumi.Input<OnlineExperimentationWorkspaceSku>? sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the OnlineExperimentationWorkspace
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [OnlineExperimentationWorkspaceArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the OnlineExperimentationWorkspace
  OnlineExperimentationWorkspaceArgs({
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            OnlineExperimentationWorkspaceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            OnlineExperimentationWorkspaceSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': ?workspaceName,
    };
  }

  factory OnlineExperimentationWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceArgs(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OnlineExperimentationWorkspaceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OnlineExperimentationWorkspaceSku.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: (() {
        final guardedValue = map['workspaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

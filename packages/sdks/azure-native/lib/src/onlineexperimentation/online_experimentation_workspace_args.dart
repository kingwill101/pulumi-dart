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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<OnlineExperimentationWorkspaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<OnlineExperimentationWorkspaceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': ?workspaceName,
    };
  }

  factory OnlineExperimentationWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceArgs(
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (OnlineExperimentationWorkspaceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (OnlineExperimentationWorkspaceSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName']! as String).input(),
    );
  }
}


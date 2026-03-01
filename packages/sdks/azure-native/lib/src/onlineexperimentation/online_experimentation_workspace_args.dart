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
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<OnlineExperimentationWorkspaceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<OnlineExperimentationWorkspaceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceName,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<OnlineExperimentationWorkspaceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<OnlineExperimentationWorkspaceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<OnlineExperimentationWorkspaceProperties>(OnlineExperimentationWorkspaceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<OnlineExperimentationWorkspaceSku>(OnlineExperimentationWorkspaceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}


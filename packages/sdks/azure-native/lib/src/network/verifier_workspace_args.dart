// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'verifier_workspace_properties.dart';

/// {@template pulumi_network_verifier_workspace_args_doc}
/// The set of arguments for VerifierWorkspace.
/// {@endtemplate}
/// {@macro pulumi_network_verifier_workspace_args_doc}
class VerifierWorkspaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;

  /// Properties of Verifier Workspace resource.
  final pulumi.Input<VerifierWorkspaceProperties>? properties;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Workspace name.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [VerifierWorkspaceArgs].
  /// [location] The geo-location where the resource lives
  /// [networkManagerName] The name of the network manager.
  /// [properties] Properties of Verifier Workspace resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [workspaceName] Workspace name.
  VerifierWorkspaceArgs({
    this.location,
    required this.networkManagerName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkManagerName': networkManagerName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            VerifierWorkspaceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': ?workspaceName,
    };
  }

  factory VerifierWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return VerifierWorkspaceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkManagerName: pulumi.Input.fromValue(
        map['networkManagerName'] as String,
      ),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VerifierWorkspaceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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

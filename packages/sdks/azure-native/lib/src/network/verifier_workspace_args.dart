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
      'properties': ?pulumi.Input.mapOptionalInputValue<VerifierWorkspaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': ?workspaceName,
    };
  }

  factory VerifierWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return VerifierWorkspaceArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      properties: map['properties'] == null ? null : (VerifierWorkspaceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName']! as String).input(),
    );
  }
}


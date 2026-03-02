// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_hunt_relation_args_doc}
/// The set of arguments for HuntRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_hunt_relation_args_doc}
class HuntRelationArgs {
  /// The hunt id (GUID)
  final pulumi.Input<String> huntId;
  /// The hunt relation id (GUID)
  final pulumi.Input<String>? huntRelationId;
  /// List of labels relevant to this hunt
  final pulumi.Input<List<String>>? labels;
  /// The id of the related resource
  final pulumi.Input<String> relatedResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [HuntRelationArgs].
  /// [huntId] The hunt id (GUID)
  /// [huntRelationId] The hunt relation id (GUID)
  /// [labels] List of labels relevant to this hunt
  /// [relatedResourceId] The id of the related resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  HuntRelationArgs({
    required this.huntId,
    this.huntRelationId,
    this.labels,
    required this.relatedResourceId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'huntId': huntId,
      'huntRelationId': ?huntRelationId,
      'labels': ?labels,
      'relatedResourceId': relatedResourceId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory HuntRelationArgs.fromMap(Map<String, dynamic> map) {
    return HuntRelationArgs(
      huntId: (map['huntId'] as String).input(),
      huntRelationId: map['huntRelationId'] == null ? null : (map['huntRelationId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as List).cast<String>()).input(),
      relatedResourceId: (map['relatedResourceId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}


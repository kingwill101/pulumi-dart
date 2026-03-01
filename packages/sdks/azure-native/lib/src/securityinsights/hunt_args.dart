// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hunt_owner.dart';

/// {@template pulumi_securityinsights_hunt_args_doc}
/// The set of arguments for Hunt.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_hunt_args_doc}
class HuntArgs {
  /// A list of mitre attack tactics the hunt is associated with
  final pulumi.Input<List<String>>? attackTactics;
  /// A list of a mitre attack techniques the hunt is associated with
  final pulumi.Input<List<String>>? attackTechniques;
  /// The description of the hunt
  final pulumi.Input<String> description;
  /// The display name of the hunt
  final pulumi.Input<String> displayName;
  /// The hunt id (GUID)
  final pulumi.Input<String>? huntId;
  /// The hypothesis status of the hunt.
  final pulumi.Input<String>? hypothesisStatus;
  /// List of labels relevant to this hunt
  final pulumi.Input<List<String>>? labels;
  /// Describes a user that the hunt is assigned to
  final pulumi.Input<HuntOwner>? owner;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The status of the hunt.
  final pulumi.Input<String>? status;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [HuntArgs].
  /// [attackTactics] A list of mitre attack tactics the hunt is associated with
  /// [attackTechniques] A list of a mitre attack techniques the hunt is associated with
  /// [description] The description of the hunt
  /// [displayName] The display name of the hunt
  /// [huntId] The hunt id (GUID)
  /// [hypothesisStatus] The hypothesis status of the hunt.
  /// [labels] List of labels relevant to this hunt
  /// [owner] Describes a user that the hunt is assigned to
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] The status of the hunt.
  /// [workspaceName] The name of the workspace.
  HuntArgs({
    pulumi.Output<List<String>>? attackTactics,
    pulumi.Output<List<String>>? attackTechniques,
    required pulumi.Output<String> description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? huntId,
    pulumi.Output<String>? hypothesisStatus,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<HuntOwner>? owner,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? status,
    required pulumi.Output<String> workspaceName,
  }) :
      attackTactics = pulumi.Input.asOptionalInput<List<String>>(attackTactics),
      attackTechniques = pulumi.Input.asOptionalInput<List<String>>(attackTechniques),
      description = pulumi.Input.asInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      huntId = pulumi.Input.asOptionalInput<String>(huntId),
      hypothesisStatus = pulumi.Input.asOptionalInput<String>(hypothesisStatus),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      owner = pulumi.Input.asOptionalInput<HuntOwner>(owner),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<String>(status),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackTactics': ?attackTactics,
      'attackTechniques': ?attackTechniques,
      'description': description,
      'displayName': displayName,
      'huntId': ?huntId,
      'hypothesisStatus': ?hypothesisStatus,
      'labels': ?labels,
      'owner': ?pulumi.Input.mapOptionalInputValue<HuntOwner, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'workspaceName': workspaceName,
    };
  }

  factory HuntArgs.fromMap(Map<String, dynamic> map) {
    return HuntArgs(
      attackTactics: map['attackTactics'] == null ? null : pulumi.Output.create<List<String>>((map['attackTactics'] as List).cast<String>()),
      attackTechniques: map['attackTechniques'] == null ? null : pulumi.Output.create<List<String>>((map['attackTechniques'] as List).cast<String>()),
      description: pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      huntId: map['huntId'] == null ? null : pulumi.Output.create<String>(map['huntId'] as String),
      hypothesisStatus: map['hypothesisStatus'] == null ? null : pulumi.Output.create<String>(map['hypothesisStatus'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      owner: map['owner'] == null ? null : pulumi.Output.create<HuntOwner>(HuntOwner.fromMap((map['owner'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}


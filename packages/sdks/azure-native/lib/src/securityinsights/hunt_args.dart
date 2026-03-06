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
  const HuntArgs({
    this.attackTactics,
    this.attackTechniques,
    required this.description,
    required this.displayName,
    this.huntId,
    this.hypothesisStatus,
    this.labels,
    this.owner,
    required this.resourceGroupName,
    this.status,
    required this.workspaceName,
  });

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
      attackTactics: (() { final guardedValue = map['attackTactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      attackTechniques: (() { final guardedValue = map['attackTechniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      huntId: (() { final guardedValue = map['huntId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hypothesisStatus: (() { final guardedValue = map['hypothesisStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HuntOwner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}


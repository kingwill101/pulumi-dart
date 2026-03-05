// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1beta_get_folder_replay_policysimulator_v1beta_args_doc}
/// Arguments for getFolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_get_folder_replay_policysimulator_v1beta_args_doc}
class GetFolderReplayPolicysimulatorV1betaArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetFolderReplayPolicysimulatorV1betaArgs].
  /// [folderId] Required.
  /// [location] Required.
  /// [replayId] Required.
  GetFolderReplayPolicysimulatorV1betaArgs({
    required this.folderId,
    required this.location,
    required this.replayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'location': location,
      'replayId': replayId,
    };
  }

  factory GetFolderReplayPolicysimulatorV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderReplayPolicysimulatorV1betaArgs(
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      replayId: pulumi.Input.fromValue(map['replayId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1beta1_get_folder_replay_policysimulator_v1beta1_args_doc}
/// Arguments for getFolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_get_folder_replay_policysimulator_v1beta1_args_doc}
class GetFolderReplayPolicysimulatorV1beta1Args {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetFolderReplayPolicysimulatorV1beta1Args].
  /// [folderId] Required.
  /// [location] Required.
  /// [replayId] Required.
  GetFolderReplayPolicysimulatorV1beta1Args({
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

  factory GetFolderReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFolderReplayPolicysimulatorV1beta1Args(
      folderId: (map['folderId'] as String).input(),
      location: (map['location'] as String).input(),
      replayId: (map['replayId'] as String).input(),
    );
  }
}


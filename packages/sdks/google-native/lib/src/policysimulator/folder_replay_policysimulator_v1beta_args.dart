// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta_folder_replay_policysimulator_v1beta_args_doc}
/// The set of arguments for FolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_folder_replay_policysimulator_v1beta_args_doc}
class FolderReplayPolicysimulatorV1betaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1betaReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  /// Creates a new [FolderReplayPolicysimulatorV1betaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [folderId] Required.
  /// [location] Optional.
  FolderReplayPolicysimulatorV1betaArgs({
    required this.config,
    required this.folderId,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudPolicysimulatorV1betaReplayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'folderId': folderId,
      'location': ?location,
    };
  }

  factory FolderReplayPolicysimulatorV1betaArgs.fromMap(Map<String, dynamic> map) {
    return FolderReplayPolicysimulatorV1betaArgs(
      config: (GoogleCloudPolicysimulatorV1betaReplayConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      folderId: (map['folderId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
    );
  }
}


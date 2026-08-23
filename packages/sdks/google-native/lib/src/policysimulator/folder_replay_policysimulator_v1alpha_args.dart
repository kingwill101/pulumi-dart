// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// {@template pulumi_policysimulator_v1alpha_folder_replay_policysimulator_v1alpha_args_doc}
/// The set of arguments for FolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_folder_replay_policysimulator_v1alpha_args_doc}
class FolderReplayPolicysimulatorV1alphaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  /// Creates a new [FolderReplayPolicysimulatorV1alphaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [folderId] Required.
  /// [location] Optional.
  const FolderReplayPolicysimulatorV1alphaArgs({
    required this.config,
    required this.folderId,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudPolicysimulatorV1alphaReplayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'folderId': folderId,
      'location': ?location,
    };
  }

  factory FolderReplayPolicysimulatorV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return FolderReplayPolicysimulatorV1alphaArgs(
      config: pulumi.Input.fromValue(GoogleCloudPolicysimulatorV1alphaReplayConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta1_folder_replay_policysimulator_v1beta1_args_doc}
/// The set of arguments for FolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_folder_replay_policysimulator_v1beta1_args_doc}
class FolderReplayPolicysimulatorV1beta1Args {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  /// Creates a new [FolderReplayPolicysimulatorV1beta1Args].
  /// [config] The configuration used for the `Replay`.
  /// [folderId] Required.
  /// [location] Optional.
  FolderReplayPolicysimulatorV1beta1Args({
    required pulumi.Output<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config,
    required pulumi.Output<String> folderId,
    pulumi.Output<String>? location,
  }) :
      config = pulumi.Input.asInput<GoogleCloudPolicysimulatorV1beta1ReplayConfig>(config),
      folderId = pulumi.Input.asInput<String>(folderId),
      location = pulumi.Input.asOptionalInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudPolicysimulatorV1beta1ReplayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'folderId': folderId,
      'location': ?location,
    };
  }

  factory FolderReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FolderReplayPolicysimulatorV1beta1Args(
      config: pulumi.Output.create<GoogleCloudPolicysimulatorV1beta1ReplayConfig>(GoogleCloudPolicysimulatorV1beta1ReplayConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
    );
  }
}


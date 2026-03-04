// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config_log_source.dart';

/// The configuration used for a Replay.
class GoogleCloudPolicysimulatorV1betaReplayConfig {
  /// The logs to use as input for the Replay.
  final pulumi.Input<GoogleCloudPolicysimulatorV1betaReplayConfigLogSource>?
  logSource;

  /// A mapping of the resources that you want to simulate policies for and the policies that you want to simulate. Keys are the full resource names for the resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-project`. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values are Policy objects representing the policies that you want to simulate. Replays automatically take into account any IAM policies inherited through the resource hierarchy, and any policies set on descendant resources. You do not need to include these policies in the policy overlay.
  final pulumi.Input<Map<String, String>>? policyOverlay;

  /// Creates a new [GoogleCloudPolicysimulatorV1betaReplayConfig].
  /// [logSource] The logs to use as input for the Replay.
  /// [policyOverlay] A mapping of the resources that you want to simulate policies for and the policies that you want to simulate. Keys are the full resource names for the resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-project`. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values are Policy objects representing the policies that you want to simulate. Replays automatically take into account any IAM policies inherited through the resource hierarchy, and any policies set on descendant resources. You do not need to include these policies in the policy overlay.
  GoogleCloudPolicysimulatorV1betaReplayConfig({
    this.logSource,
    this.policyOverlay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logSource':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudPolicysimulatorV1betaReplayConfigLogSource,
            String
          >(logSource, (value) => value.wireValue),
      'policyOverlay': ?policyOverlay,
    };
  }

  factory GoogleCloudPolicysimulatorV1betaReplayConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudPolicysimulatorV1betaReplayConfig(
      logSource: (() {
        final guardedValue = map['logSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudPolicysimulatorV1betaReplayConfigLogSource.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      policyOverlay: (() {
        final guardedValue = map['policyOverlay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

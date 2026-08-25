// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_option_volume.dart';

class GetTriggerBuildOption {
  /// Requested disk size for the VM that runs the build. Note that this is NOT "disk free";
  /// some of the space will be used by the operating system and build utilities.
  /// Also note that this is the minimum disk size that will be allocated for the build --
  /// the build may run with a larger disk than requested. At present, the maximum disk size
  /// is 1000GB; builds that request more than the maximum are rejected with an error.
  final pulumi.Input<int> diskSizeGb;
  /// Option to specify whether or not to apply bash style string operations to the substitutions.
  ///
  /// NOTE this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  final pulumi.Input<bool> dynamicSubstitutions;
  /// A list of global environment variable definitions that will exist for all build steps
  /// in this build. If a variable is defined in both globally and in a build step,
  /// the variable will use the build step value.
  ///
  /// The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final pulumi.Input<List<String>> envs;
  /// Option to define build log streaming behavior to Google Cloud Storage. Possible values: ["STREAM_DEFAULT", "STREAM_ON", "STREAM_OFF"]
  final pulumi.Input<String> logStreamingOption;
  /// Option to specify the logging mode, which determines if and where build logs are stored. Possible values: ["LOGGING_UNSPECIFIED", "LEGACY", "GCS_ONLY", "STACKDRIVER_ONLY", "CLOUD_LOGGING_ONLY", "NONE"]
  final pulumi.Input<String> logging;
  /// Compute Engine machine type on which to run the build.
  final pulumi.Input<String> machineType;
  /// Requested verifiability options. Possible values: ["NOT_VERIFIED", "VERIFIED"]
  final pulumi.Input<String> requestedVerifyOption;
  /// A list of global environment variables, which are encrypted using a Cloud Key Management
  /// Service crypto key. These values must be specified in the build's Secret. These variables
  /// will be available to all build steps in this build.
  final pulumi.Input<List<String>> secretEnvs;
  /// Requested hash for SourceProvenance. Possible values: ["NONE", "SHA256", "MD5"]
  final pulumi.Input<List<String>> sourceProvenanceHashes;
  /// Option to specify behavior when there is an error in the substitution checks.
  ///
  /// NOTE this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden
  /// in the build configuration file. Possible values: ["MUST_MATCH", "ALLOW_LOOSE"]
  final pulumi.Input<String> substitutionOption;
  /// Global list of volumes to mount for ALL build steps
  ///
  /// Each volume is created as an empty volume prior to starting the build process.
  /// Upon completion of the build, volumes and their contents are discarded. Global
  /// volume names and paths cannot conflict with the volumes defined a build step.
  ///
  /// Using a global volume in a build with only one step is not valid as it is indicative
  /// of a build request with an incorrect configuration.
  final pulumi.Input<List<GetTriggerBuildOptionVolume>> volumes;
  /// Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}
  ///
  /// This field is experimental.
  final pulumi.Input<String> workerPool;

  /// Creates a new [GetTriggerBuildOption].
  /// [diskSizeGb] Requested disk size for the VM that runs the build. Note that this is NOT "disk free";
  /// [dynamicSubstitutions] Option to specify whether or not to apply bash style string operations to the substitutions.
  /// [envs] A list of global environment variable definitions that will exist for all build steps
  /// [logStreamingOption] Option to define build log streaming behavior to Google Cloud Storage. Possible values: ["STREAM_DEFAULT", "STREAM_ON", "STREAM_OFF"]
  /// [logging] Option to specify the logging mode, which determines if and where build logs are stored. Possible values: ["LOGGING_UNSPECIFIED", "LEGACY", "GCS_ONLY", "STACKDRIVER_ONLY", "CLOUD_LOGGING_ONLY", "NONE"]
  /// [machineType] Compute Engine machine type on which to run the build.
  /// [requestedVerifyOption] Requested verifiability options. Possible values: ["NOT_VERIFIED", "VERIFIED"]
  /// [secretEnvs] A list of global environment variables, which are encrypted using a Cloud Key Management
  /// [sourceProvenanceHashes] Requested hash for SourceProvenance. Possible values: ["NONE", "SHA256", "MD5"]
  /// [substitutionOption] Option to specify behavior when there is an error in the substitution checks.
  /// [volumes] Global list of volumes to mount for ALL build steps
  /// [workerPool] Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}
  const GetTriggerBuildOption({
    required this.diskSizeGb,
    required this.dynamicSubstitutions,
    required this.envs,
    required this.logStreamingOption,
    required this.logging,
    required this.machineType,
    required this.requestedVerifyOption,
    required this.secretEnvs,
    required this.sourceProvenanceHashes,
    required this.substitutionOption,
    required this.volumes,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'dynamicSubstitutions': dynamicSubstitutions,
      'envs': envs,
      'logStreamingOption': logStreamingOption,
      'logging': logging,
      'machineType': machineType,
      'requestedVerifyOption': requestedVerifyOption,
      'secretEnvs': secretEnvs,
      'sourceProvenanceHashes': sourceProvenanceHashes,
      'substitutionOption': substitutionOption,
      'volumes': pulumi.Input.mapInputValue<List<GetTriggerBuildOptionVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GetTriggerBuildOptionVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerPool': workerPool,
    };
  }

  factory GetTriggerBuildOption.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildOption(
      diskSizeGb: pulumi.Input.fromValue((map['diskSizeGb'] as num).toInt()),
      dynamicSubstitutions: pulumi.Input.fromValue(map['dynamicSubstitutions'] as bool),
      envs: pulumi.Input.fromValue((map['envs'] as List).cast<String>()),
      logStreamingOption: pulumi.Input.fromValue(map['logStreamingOption'] as String),
      logging: pulumi.Input.fromValue(map['logging'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      requestedVerifyOption: pulumi.Input.fromValue(map['requestedVerifyOption'] as String),
      secretEnvs: pulumi.Input.fromValue((map['secretEnvs'] as List).cast<String>()),
      sourceProvenanceHashes: pulumi.Input.fromValue((map['sourceProvenanceHashes'] as List).cast<String>()),
      substitutionOption: pulumi.Input.fromValue(map['substitutionOption'] as String),
      volumes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildOptionVolume>(map['volumes']!, (value) => GetTriggerBuildOptionVolume.fromMap((value as Map).cast<String, dynamic>()))),
      workerPool: pulumi.Input.fromValue(map['workerPool'] as String),
    );
  }
}

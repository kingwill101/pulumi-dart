// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_options_volume.dart';

class TriggerBuildOptions {
  /// Requested disk size for the VM that runs the build. Note that this is NOT "disk free";
  /// some of the space will be used by the operating system and build utilities.
  /// Also note that this is the minimum disk size that will be allocated for the build --
  /// the build may run with a larger disk than requested. At present, the maximum disk size
  /// is 1000GB; builds that request more than the maximum are rejected with an error.
  final pulumi.Input<int>? diskSizeGb;
  /// Option to specify whether or not to apply bash style string operations to the substitutions.
  /// NOTE this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  final pulumi.Input<bool>? dynamicSubstitutions;
  /// A list of global environment variable definitions that will exist for all build steps
  /// in this build. If a variable is defined in both globally and in a build step,
  /// the variable will use the build step value.
  /// The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final pulumi.Input<List<String>>? envs;
  /// Option to define build log streaming behavior to Google Cloud Storage.
  /// Possible values are: `STREAM_DEFAULT`, `STREAM_ON`, `STREAM_OFF`.
  final pulumi.Input<String>? logStreamingOption;
  /// Option to specify the logging mode, which determines if and where build logs are stored.
  /// Possible values are: `LOGGING_UNSPECIFIED`, `LEGACY`, `GCS_ONLY`, `STACKDRIVER_ONLY`, `CLOUD_LOGGING_ONLY`, `NONE`.
  final pulumi.Input<String>? logging;
  /// Compute Engine machine type on which to run the build.
  final pulumi.Input<String>? machineType;
  /// Requested verifiability options.
  /// Possible values are: `NOT_VERIFIED`, `VERIFIED`.
  final pulumi.Input<String>? requestedVerifyOption;
  /// A list of global environment variables, which are encrypted using a Cloud Key Management
  /// Service crypto key. These values must be specified in the build's Secret. These variables
  /// will be available to all build steps in this build.
  final pulumi.Input<List<String>>? secretEnvs;
  /// Requested hash for SourceProvenance.
  /// Each value may be one of: `NONE`, `SHA256`, `MD5`.
  final pulumi.Input<List<String>>? sourceProvenanceHashes;
  /// Option to specify behavior when there is an error in the substitution checks.
  /// NOTE this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden
  /// in the build configuration file.
  /// Possible values are: `MUST_MATCH`, `ALLOW_LOOSE`.
  final pulumi.Input<String>? substitutionOption;
  /// Global list of volumes to mount for ALL build steps
  /// Each volume is created as an empty volume prior to starting the build process.
  /// Upon completion of the build, volumes and their contents are discarded. Global
  /// volume names and paths cannot conflict with the volumes defined a build step.
  /// Using a global volume in a build with only one step is not valid as it is indicative
  /// of a build request with an incorrect configuration.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildOptionsVolume>>? volumes;
  /// Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}
  /// This field is experimental.
  final pulumi.Input<String>? workerPool;

  /// Creates a new [TriggerBuildOptions].
  /// [diskSizeGb] Requested disk size for the VM that runs the build. Note that this is NOT "disk free";
  /// [dynamicSubstitutions] Option to specify whether or not to apply bash style string operations to the substitutions.
  /// [envs] A list of global environment variable definitions that will exist for all build steps
  /// [logStreamingOption] Option to define build log streaming behavior to Google Cloud Storage.
  /// [logging] Option to specify the logging mode, which determines if and where build logs are stored.
  /// [machineType] Compute Engine machine type on which to run the build.
  /// [requestedVerifyOption] Requested verifiability options.
  /// [secretEnvs] A list of global environment variables, which are encrypted using a Cloud Key Management
  /// [sourceProvenanceHashes] Requested hash for SourceProvenance.
  /// [substitutionOption] Option to specify behavior when there is an error in the substitution checks.
  /// [volumes] Global list of volumes to mount for ALL build steps
  /// [workerPool] Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}
  TriggerBuildOptions({
    this.diskSizeGb,
    this.dynamicSubstitutions,
    this.envs,
    this.logStreamingOption,
    this.logging,
    this.machineType,
    this.requestedVerifyOption,
    this.secretEnvs,
    this.sourceProvenanceHashes,
    this.substitutionOption,
    this.volumes,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'dynamicSubstitutions': ?dynamicSubstitutions,
      'envs': ?envs,
      'logStreamingOption': ?logStreamingOption,
      'logging': ?logging,
      'machineType': ?machineType,
      'requestedVerifyOption': ?requestedVerifyOption,
      'secretEnvs': ?secretEnvs,
      'sourceProvenanceHashes': ?sourceProvenanceHashes,
      'substitutionOption': ?substitutionOption,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<TriggerBuildOptionsVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<TriggerBuildOptionsVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerPool': ?workerPool,
    };
  }

  factory TriggerBuildOptions.fromMap(Map<String, dynamic> map) {
    return TriggerBuildOptions(
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      dynamicSubstitutions: map['dynamicSubstitutions'] == null ? null : (map['dynamicSubstitutions'] as bool).input(),
      envs: map['envs'] == null ? null : ((map['envs'] as List).cast<String>()).input(),
      logStreamingOption: map['logStreamingOption'] == null ? null : (map['logStreamingOption'] as String).input(),
      logging: map['logging'] == null ? null : (map['logging'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      requestedVerifyOption: map['requestedVerifyOption'] == null ? null : (map['requestedVerifyOption'] as String).input(),
      secretEnvs: map['secretEnvs'] == null ? null : ((map['secretEnvs'] as List).cast<String>()).input(),
      sourceProvenanceHashes: map['sourceProvenanceHashes'] == null ? null : ((map['sourceProvenanceHashes'] as List).cast<String>()).input(),
      substitutionOption: map['substitutionOption'] == null ? null : (map['substitutionOption'] as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<TriggerBuildOptionsVolume>(map['volumes'], (value) => TriggerBuildOptionsVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workerPool: map['workerPool'] == null ? null : (map['workerPool'] as String).input(),
    );
  }
}


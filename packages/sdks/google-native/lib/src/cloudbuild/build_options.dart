// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_options_default_logs_bucket_behavior.dart';
import 'build_options_log_streaming_option.dart';
import 'build_options_logging.dart';
import 'build_options_machine_type.dart';
import 'build_options_requested_verify_option.dart';
import 'build_options_source_provenance_hash_item.dart';
import 'build_options_substitution_option.dart';
import 'pool_option.dart';
import 'volume.dart';

/// Optional arguments to enable specific features of builds.
class BuildOptions {
  /// Option to include built-in and custom substitutions as env variables for all build steps.
  final pulumi.Input<bool>? automapSubstitutions;
  /// Optional. Option to specify how default logs buckets are setup.
  final pulumi.Input<BuildOptionsDefaultLogsBucketBehavior>? defaultLogsBucketBehavior;
  /// Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.
  final pulumi.Input<String>? diskSizeGb;
  /// Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  final pulumi.Input<bool>? dynamicSubstitutions;
  /// A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final pulumi.Input<List<String>>? env;
  /// Option to define build log streaming behavior to Cloud Storage.
  final pulumi.Input<BuildOptionsLogStreamingOption>? logStreamingOption;
  /// Option to specify the logging mode, which determines if and where build logs are stored.
  final pulumi.Input<BuildOptionsLogging>? logging;
  /// Compute Engine machine type on which to run the build.
  final pulumi.Input<BuildOptionsMachineType>? machineType;
  /// Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
  final pulumi.Input<PoolOption>? pool;
  /// Requested verifiability options.
  final pulumi.Input<BuildOptionsRequestedVerifyOption>? requestedVerifyOption;
  /// A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.
  final pulumi.Input<List<String>>? secretEnv;
  /// Requested hash for SourceProvenance.
  final pulumi.Input<List<BuildOptionsSourceProvenanceHashItem>>? sourceProvenanceHash;
  /// Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
  final pulumi.Input<BuildOptionsSubstitutionOption>? substitutionOption;
  /// Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
  final pulumi.Input<List<Volume>>? volumes;
  /// This field deprecated; please use `pool.name` instead.
  final pulumi.Input<String>? workerPool;

  /// Creates a new [BuildOptions].
  /// [automapSubstitutions] Option to include built-in and custom substitutions as env variables for all build steps.
  /// [defaultLogsBucketBehavior] Optional. Option to specify how default logs buckets are setup.
  /// [diskSizeGb] Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.
  /// [dynamicSubstitutions] Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  /// [env] A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  /// [logStreamingOption] Option to define build log streaming behavior to Cloud Storage.
  /// [logging] Option to specify the logging mode, which determines if and where build logs are stored.
  /// [machineType] Compute Engine machine type on which to run the build.
  /// [pool] Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
  /// [requestedVerifyOption] Requested verifiability options.
  /// [secretEnv] A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.
  /// [sourceProvenanceHash] Requested hash for SourceProvenance.
  /// [substitutionOption] Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
  /// [volumes] Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
  /// [workerPool] This field deprecated; please use `pool.name` instead.
  BuildOptions({
    this.automapSubstitutions,
    this.defaultLogsBucketBehavior,
    this.diskSizeGb,
    this.dynamicSubstitutions,
    this.env,
    this.logStreamingOption,
    this.logging,
    this.machineType,
    this.pool,
    this.requestedVerifyOption,
    this.secretEnv,
    this.sourceProvenanceHash,
    this.substitutionOption,
    this.volumes,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automapSubstitutions': ?automapSubstitutions,
      'defaultLogsBucketBehavior': ?pulumi.Input.mapOptionalInputValue<BuildOptionsDefaultLogsBucketBehavior, String>(defaultLogsBucketBehavior, (value) => value.value),
      'diskSizeGb': ?diskSizeGb,
      'dynamicSubstitutions': ?dynamicSubstitutions,
      'env': ?env,
      'logStreamingOption': ?pulumi.Input.mapOptionalInputValue<BuildOptionsLogStreamingOption, String>(logStreamingOption, (value) => value.value),
      'logging': ?pulumi.Input.mapOptionalInputValue<BuildOptionsLogging, String>(logging, (value) => value.value),
      'machineType': ?pulumi.Input.mapOptionalInputValue<BuildOptionsMachineType, String>(machineType, (value) => value.value),
      'pool': ?pulumi.Input.mapOptionalInputValue<PoolOption, Map<String, dynamic>>(pool, (value) => value.toMap()),
      'requestedVerifyOption': ?pulumi.Input.mapOptionalInputValue<BuildOptionsRequestedVerifyOption, String>(requestedVerifyOption, (value) => value.value),
      'secretEnv': ?secretEnv,
      'sourceProvenanceHash': ?pulumi.Input.mapOptionalInputValue<List<BuildOptionsSourceProvenanceHashItem>, List<String>>(sourceProvenanceHash, (value) => pulumi.Input.encodeList<BuildOptionsSourceProvenanceHashItem, String>(value, (value) => value.value)),
      'substitutionOption': ?pulumi.Input.mapOptionalInputValue<BuildOptionsSubstitutionOption, String>(substitutionOption, (value) => value.value),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerPool': ?workerPool,
    };
  }

  factory BuildOptions.fromMap(Map<String, dynamic> map) {
    return BuildOptions(
      automapSubstitutions: map['automapSubstitutions'] == null ? null : (map['automapSubstitutions']! as bool).input(),
      defaultLogsBucketBehavior: map['defaultLogsBucketBehavior'] == null ? null : (BuildOptionsDefaultLogsBucketBehavior.fromValue(map['defaultLogsBucketBehavior']! as String)).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb']! as String).input(),
      dynamicSubstitutions: map['dynamicSubstitutions'] == null ? null : (map['dynamicSubstitutions']! as bool).input(),
      env: map['env'] == null ? null : ((map['env']! as List).cast<String>()).input(),
      logStreamingOption: map['logStreamingOption'] == null ? null : (BuildOptionsLogStreamingOption.fromValue(map['logStreamingOption']! as String)).input(),
      logging: map['logging'] == null ? null : (BuildOptionsLogging.fromValue(map['logging']! as String)).input(),
      machineType: map['machineType'] == null ? null : (BuildOptionsMachineType.fromValue(map['machineType']! as String)).input(),
      pool: map['pool'] == null ? null : (PoolOption.fromMap((map['pool']! as Map).cast<String, dynamic>())).input(),
      requestedVerifyOption: map['requestedVerifyOption'] == null ? null : (BuildOptionsRequestedVerifyOption.fromValue(map['requestedVerifyOption']! as String)).input(),
      secretEnv: map['secretEnv'] == null ? null : ((map['secretEnv']! as List).cast<String>()).input(),
      sourceProvenanceHash: map['sourceProvenanceHash'] == null ? null : (pulumi.Input.decodeList<BuildOptionsSourceProvenanceHashItem>(map['sourceProvenanceHash']!, (value) => BuildOptionsSourceProvenanceHashItem.fromValue(value as String))).input(),
      substitutionOption: map['substitutionOption'] == null ? null : (BuildOptionsSubstitutionOption.fromValue(map['substitutionOption']! as String)).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<Volume>(map['volumes']!, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workerPool: map['workerPool'] == null ? null : (map['workerPool']! as String).input(),
    );
  }
}


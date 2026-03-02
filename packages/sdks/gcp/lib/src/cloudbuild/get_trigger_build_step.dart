// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_step_volume.dart';

class GetTriggerBuildStep {
  /// Allow this build step to fail without failing the entire build if and
  /// only if the exit code is one of the specified codes.
  ///
  /// If 'allowFailure' is also specified, this field will take precedence.
  final pulumi.Input<List<int>> allowExitCodes;
  /// Allow this build step to fail without failing the entire build.
  /// If false, the entire build will fail if this step fails. Otherwise, the
  /// build will succeed, but this step will still have a failure status.
  /// Error information will be reported in the 'failureDetail' field.
  ///
  /// 'allowExitCodes' takes precedence over this field.
  final pulumi.Input<bool> allowFailure;
  /// A list of arguments that will be presented to the step when it is started.
  ///
  /// If the image used to run the step's container has an entrypoint, the args
  /// are used as arguments to that entrypoint. If the image does not define an
  /// entrypoint, the first element in args is used as the entrypoint, and the
  /// remainder will be used as arguments.
  final pulumi.Input<List<String>> args;
  /// Working directory to use when running this step's container.
  ///
  /// If this value is a relative path, it is relative to the build's working
  /// directory. If this value is absolute, it may be outside the build's working
  /// directory, in which case the contents of the path may not be persisted
  /// across build step executions, unless a 'volume' for that path is specified.
  ///
  /// If the build specifies a 'RepoSource' with 'dir' and a step with a
  /// 'dir',
  /// which specifies an absolute path, the 'RepoSource' 'dir' is ignored
  /// for the step's execution.
  final pulumi.Input<String> dir;
  /// Entrypoint to be used instead of the build step image's
  /// default entrypoint.
  /// If unset, the image's default entrypoint is used
  final pulumi.Input<String> entrypoint;
  /// A list of environment variable definitions to be used when
  /// running a step.
  ///
  /// The elements are of the form "KEY=VALUE" for the environment variable
  /// "KEY" being given the value "VALUE".
  final pulumi.Input<List<String>> envs;
  /// Unique identifier for this build step, used in 'wait_for' to
  /// reference this build step as a dependency.
  final pulumi.Input<String> id;
  /// The name of the container image that will run this particular build step.
  ///
  /// If the image is available in the host's Docker daemon's cache, it will be
  /// run directly. If not, the host will attempt to pull the image first, using
  /// the builder service account's credentials if necessary.
  ///
  /// The Docker daemon's cache will already have the latest versions of all of
  /// the officially supported build steps (see https://github.com/GoogleCloudPlatform/cloud-builders
  /// for images and examples).
  /// The Docker daemon will also have cached many of the layers for some popular
  /// images, like "ubuntu", "debian", but they will be refreshed at the time
  /// you attempt to use them.
  ///
  /// If you built an image in a previous build step, it will be stored in the
  /// host's Docker daemon's cache and is available to use as the name for a
  /// later build step.
  final pulumi.Input<String> name;
  /// A shell script to be executed in the step.
  /// When script is provided, the user cannot specify the entrypoint or args.
  final pulumi.Input<String> script;
  /// A list of environment variables which are encrypted using
  /// a Cloud Key
  /// Management Service crypto key. These values must be specified in
  /// the build's 'Secret'.
  final pulumi.Input<List<String>> secretEnvs;
  /// Time limit for executing this build step. If not defined,
  /// the step has no
  /// time limit and will be allowed to continue to run until either it
  /// completes or the build itself times out.
  final pulumi.Input<String> timeout;
  /// Output only. Stores timing information for executing this
  /// build step.
  final pulumi.Input<String> timing;
  /// List of volumes to mount into the build step.
  ///
  /// Each volume is created as an empty volume prior to execution of the
  /// build step. Upon completion of the build, volumes and their contents
  /// are discarded.
  ///
  /// Using a named volume in only one step is not valid as it is
  /// indicative of a build request with an incorrect configuration.
  final pulumi.Input<List<GetTriggerBuildStepVolume>> volumes;
  /// The ID(s) of the step(s) that this build step depends on.
  ///
  /// This build step will not start until all the build steps in 'wait_for'
  /// have completed successfully. If 'wait_for' is empty, this build step
  /// will start when all previous build steps in the 'Build.Steps' list
  /// have completed successfully.
  final pulumi.Input<List<String>> waitFors;

  /// Creates a new [GetTriggerBuildStep].
  /// [allowExitCodes] Allow this build step to fail without failing the entire build if and
  /// [allowFailure] Allow this build step to fail without failing the entire build.
  /// [args] A list of arguments that will be presented to the step when it is started.
  /// [dir] Working directory to use when running this step's container.
  /// [entrypoint] Entrypoint to be used instead of the build step image's
  /// [envs] A list of environment variable definitions to be used when
  /// [id] Unique identifier for this build step, used in 'wait_for' to
  /// [name] The name of the container image that will run this particular build step.
  /// [script] A shell script to be executed in the step.
  /// [secretEnvs] A list of environment variables which are encrypted using
  /// [timeout] Time limit for executing this build step. If not defined,
  /// [timing] Output only. Stores timing information for executing this
  /// [volumes] List of volumes to mount into the build step.
  /// [waitFors] The ID(s) of the step(s) that this build step depends on.
  GetTriggerBuildStep({
    required this.allowExitCodes,
    required this.allowFailure,
    required this.args,
    required this.dir,
    required this.entrypoint,
    required this.envs,
    required this.id,
    required this.name,
    required this.script,
    required this.secretEnvs,
    required this.timeout,
    required this.timing,
    required this.volumes,
    required this.waitFors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExitCodes': allowExitCodes,
      'allowFailure': allowFailure,
      'args': args,
      'dir': dir,
      'entrypoint': entrypoint,
      'envs': envs,
      'id': id,
      'name': name,
      'script': script,
      'secretEnvs': secretEnvs,
      'timeout': timeout,
      'timing': timing,
      'volumes': pulumi.Input.mapInputValue<List<GetTriggerBuildStepVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GetTriggerBuildStepVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitFors': waitFors,
    };
  }

  factory GetTriggerBuildStep.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildStep(
      allowExitCodes: ((map['allowExitCodes'] as List).cast<int>()).input(),
      allowFailure: (map['allowFailure'] as bool).input(),
      args: ((map['args'] as List).cast<String>()).input(),
      dir: (map['dir'] as String).input(),
      entrypoint: (map['entrypoint'] as String).input(),
      envs: ((map['envs'] as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      script: (map['script'] as String).input(),
      secretEnvs: ((map['secretEnvs'] as List).cast<String>()).input(),
      timeout: (map['timeout'] as String).input(),
      timing: (map['timing'] as String).input(),
      volumes: (pulumi.Input.decodeList<GetTriggerBuildStepVolume>(map['volumes'], (value) => GetTriggerBuildStepVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      waitFors: ((map['waitFors'] as List).cast<String>()).input(),
    );
  }
}


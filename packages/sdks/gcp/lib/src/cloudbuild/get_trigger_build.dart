// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_artifact.dart';
import 'get_trigger_build_available_secret.dart';
import 'get_trigger_build_option.dart';
import 'get_trigger_build_secret.dart';
import 'get_trigger_build_source.dart';
import 'get_trigger_build_step.dart';

class GetTriggerBuild {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  final pulumi.Input<List<GetTriggerBuildArtifact>> artifacts;
  /// Secrets and secret environment variables.
  final pulumi.Input<List<GetTriggerBuildAvailableSecret>> availableSecrets;
  /// A list of images to be pushed upon the successful completion of all build steps.
  /// The images are pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's results field.
  /// If any of the images fail to be pushed, the build status is marked FAILURE.
  final pulumi.Input<List<String>> images;
  /// Google Cloud Storage bucket where logs should be written.
  /// Logs file names will be of the format ${logsBucket}/log-${build_id}.txt.
  final pulumi.Input<String> logsBucket;
  /// Special options for this build.
  final pulumi.Input<List<GetTriggerBuildOption>> options;
  /// TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// the build will expire and the build status will be EXPIRED.
  /// The TTL starts ticking from createTime.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> queueTtl;
  /// Secrets to decrypt using Cloud Key Management Service.
  final pulumi.Input<List<GetTriggerBuildSecret>> secrets;
  /// The location of the source files to build.
  ///
  /// One of 'storageSource' or 'repoSource' must be provided.
  final pulumi.Input<List<GetTriggerBuildSource>> sources;
  /// The operations to be performed on the workspace.
  final pulumi.Input<List<GetTriggerBuildStep>> steps;
  /// Substitutions data for Build resource.
  final pulumi.Input<Map<String, String>> substitutions;
  /// Tags for annotation of a Build. These are not docker tags.
  final pulumi.Input<List<String>> tags;
  /// Amount of time that this build should be allowed to run, to second granularity.
  /// If this amount of time elapses, work on the build will cease and the build status will be TIMEOUT.
  /// This timeout must be equal to or greater than the sum of the timeouts for build steps within the build.
  /// The expected format is the number of seconds followed by s.
  /// Default time is ten minutes (600s).
  final pulumi.Input<String> timeout;

  /// Creates a new [GetTriggerBuild].
  /// [artifacts] Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// [availableSecrets] Secrets and secret environment variables.
  /// [images] A list of images to be pushed upon the successful completion of all build steps.
  /// [logsBucket] Google Cloud Storage bucket where logs should be written.
  /// [options] Special options for this build.
  /// [queueTtl] TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// [secrets] Secrets to decrypt using Cloud Key Management Service.
  /// [sources] The location of the source files to build.
  /// [steps] The operations to be performed on the workspace.
  /// [substitutions] Substitutions data for Build resource.
  /// [tags] Tags for annotation of a Build. These are not docker tags.
  /// [timeout] Amount of time that this build should be allowed to run, to second granularity.
  const GetTriggerBuild({
    required this.artifacts,
    required this.availableSecrets,
    required this.images,
    required this.logsBucket,
    required this.options,
    required this.queueTtl,
    required this.secrets,
    required this.sources,
    required this.steps,
    required this.substitutions,
    required this.tags,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': pulumi.Input.mapInputValue<List<GetTriggerBuildArtifact>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<GetTriggerBuildArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availableSecrets': pulumi.Input.mapInputValue<List<GetTriggerBuildAvailableSecret>, List<Map<String, dynamic>>>(availableSecrets, (value) => pulumi.Input.encodeList<GetTriggerBuildAvailableSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'images': images,
      'logsBucket': logsBucket,
      'options': pulumi.Input.mapInputValue<List<GetTriggerBuildOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<GetTriggerBuildOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queueTtl': queueTtl,
      'secrets': pulumi.Input.mapInputValue<List<GetTriggerBuildSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<GetTriggerBuildSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': pulumi.Input.mapInputValue<List<GetTriggerBuildSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetTriggerBuildSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': pulumi.Input.mapInputValue<List<GetTriggerBuildStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<GetTriggerBuildStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substitutions': substitutions,
      'tags': tags,
      'timeout': timeout,
    };
  }

  factory GetTriggerBuild.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuild(
      artifacts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildArtifact>(map['artifacts']!, (value) => GetTriggerBuildArtifact.fromMap((value as Map).cast<String, dynamic>()))),
      availableSecrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildAvailableSecret>(map['availableSecrets']!, (value) => GetTriggerBuildAvailableSecret.fromMap((value as Map).cast<String, dynamic>()))),
      images: pulumi.Input.fromValue((map['images'] as List).cast<String>()),
      logsBucket: pulumi.Input.fromValue(map['logsBucket'] as String),
      options: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildOption>(map['options']!, (value) => GetTriggerBuildOption.fromMap((value as Map).cast<String, dynamic>()))),
      queueTtl: pulumi.Input.fromValue(map['queueTtl'] as String),
      secrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildSecret>(map['secrets']!, (value) => GetTriggerBuildSecret.fromMap((value as Map).cast<String, dynamic>()))),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildSource>(map['sources']!, (value) => GetTriggerBuildSource.fromMap((value as Map).cast<String, dynamic>()))),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildStep>(map['steps']!, (value) => GetTriggerBuildStep.fromMap((value as Map).cast<String, dynamic>()))),
      substitutions: pulumi.Input.fromValue((map['substitutions'] as Map).cast<String, String>()),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}

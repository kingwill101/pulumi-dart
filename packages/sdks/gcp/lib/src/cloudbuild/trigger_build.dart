// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_artifacts.dart';
import 'trigger_build_available_secrets.dart';
import 'trigger_build_options.dart';
import 'trigger_build_secret.dart';
import 'trigger_build_source.dart';
import 'trigger_build_step.dart';

class TriggerBuild {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildArtifacts?>? artifacts;
  /// Secrets and secret environment variables.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildAvailableSecrets?>? availableSecrets;
  /// A list of images to be pushed upon the successful completion of all build steps.
  /// The images are pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's results field.
  /// If any of the images fail to be pushed, the build status is marked FAILURE.
  final pulumi.Input<List<String>?>? images;
  /// Google Cloud Storage bucket where logs should be written.
  /// Logs file names will be of the format ${logsBucket}/log-${build_id}.txt.
  final pulumi.Input<String?>? logsBucket;
  /// Special options for this build.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildOptions?>? options;
  /// TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// the build will expire and the build status will be EXPIRED.
  /// The TTL starts ticking from createTime.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String?>? queueTtl;
  /// Secrets to decrypt using Cloud Key Management Service.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildSecret>?>? secrets;
  /// The location of the source files to build.
  /// One of `storageSource` or `repoSource` must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildSource?>? source;
  /// The operations to be performed on the workspace.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildStep>> steps;
  /// Substitutions data for Build resource.
  final pulumi.Input<Map<String, String>?>? substitutions;
  /// Tags for annotation of a Build. These are not docker tags.
  final pulumi.Input<List<String>?>? tags;
  /// Amount of time that this build should be allowed to run, to second granularity.
  /// If this amount of time elapses, work on the build will cease and the build status will be TIMEOUT.
  /// This timeout must be equal to or greater than the sum of the timeouts for build steps within the build.
  /// The expected format is the number of seconds followed by s.
  /// Default time is ten minutes (600s).
  final pulumi.Input<String?>? timeout;

  /// Creates a new [TriggerBuild].
  /// [artifacts] Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// [availableSecrets] Secrets and secret environment variables.
  /// [images] A list of images to be pushed upon the successful completion of all build steps.
  /// [logsBucket] Google Cloud Storage bucket where logs should be written.
  /// [options] Special options for this build.
  /// [queueTtl] TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// [secrets] Secrets to decrypt using Cloud Key Management Service.
  /// [source] The location of the source files to build.
  /// [steps] The operations to be performed on the workspace.
  /// [substitutions] Substitutions data for Build resource.
  /// [tags] Tags for annotation of a Build. These are not docker tags.
  /// [timeout] Amount of time that this build should be allowed to run, to second granularity.
  const TriggerBuild({
    this.artifacts,
    this.availableSecrets,
    this.images,
    this.logsBucket,
    this.options,
    this.queueTtl,
    this.secrets,
    this.source,
    required this.steps,
    this.substitutions,
    this.tags,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?pulumi.Input.mapOptionalInputValue<TriggerBuildArtifacts, Map<String, dynamic>>(artifacts, (value) => value.toMap()),
      'availableSecrets': ?pulumi.Input.mapOptionalInputValue<TriggerBuildAvailableSecrets, Map<String, dynamic>>(availableSecrets, (value) => value.toMap()),
      'images': ?images,
      'logsBucket': ?logsBucket,
      'options': ?pulumi.Input.mapOptionalInputValue<TriggerBuildOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'queueTtl': ?queueTtl,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<TriggerBuildSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<TriggerBuildSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?pulumi.Input.mapOptionalInputValue<TriggerBuildSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'steps': pulumi.Input.mapInputValue<List<TriggerBuildStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<TriggerBuildStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substitutions': ?substitutions,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory TriggerBuild.fromMap(Map<String, dynamic> map) {
    return TriggerBuild(
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildArtifacts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availableSecrets: (() { final guardedValue = map['availableSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildAvailableSecrets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logsBucket: (() { final guardedValue = map['logsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueTtl: (() { final guardedValue = map['queueTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBuildSecret>(guardedValue, (value) => TriggerBuildSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBuildStep>(map['steps']!, (value) => TriggerBuildStep.fromMap((value as Map).cast<String, dynamic>()))),
      substitutions: (() { final guardedValue = map['substitutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

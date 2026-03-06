// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifacts.dart';
import 'build_options.dart';
import 'build_step.dart';
import 'secret.dart';
import 'secrets.dart';
import 'source.dart';

/// {@template pulumi_cloudbuild_v1_build_args_doc}
/// The set of arguments for Build.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_build_args_doc}
class BuildArgs {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  final pulumi.Input<Artifacts>? artifacts;
  /// Secrets and secret environment variables.
  final pulumi.Input<Secrets>? availableSecrets;
  /// A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.
  final pulumi.Input<List<String>>? images;
  final pulumi.Input<String>? location;
  /// Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
  final pulumi.Input<String>? logsBucket;
  /// Special options for this build.
  final pulumi.Input<BuildOptions>? options;
  final pulumi.Input<String>? project;
  /// Required. ID of the project.
  final pulumi.Input<String> projectId;
  /// TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.
  final pulumi.Input<String>? queueTtl;
  /// Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  final pulumi.Input<List<Secret>>? secrets;
  /// IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account.
  final pulumi.Input<String>? serviceAccount;
  /// The location of the source files to build.
  final pulumi.Input<Source>? source;
  /// The operations to be performed on the workspace.
  final pulumi.Input<List<BuildStep>> steps;
  /// Substitutions data for `Build` resource.
  final pulumi.Input<Map<String, String>>? substitutions;
  /// Tags for annotation of a `Build`. These are not docker tags.
  final pulumi.Input<List<String>>? tags;
  /// Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is 60 minutes.
  final pulumi.Input<String>? timeout;

  /// Creates a new [BuildArgs].
  /// [artifacts] Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// [availableSecrets] Secrets and secret environment variables.
  /// [images] A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.
  /// [location] Optional.
  /// [logsBucket] Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
  /// [options] Special options for this build.
  /// [project] Optional.
  /// [projectId] Required. ID of the project.
  /// [queueTtl] TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.
  /// [secrets] Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  /// [serviceAccount] IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account.
  /// [source] The location of the source files to build.
  /// [steps] The operations to be performed on the workspace.
  /// [substitutions] Substitutions data for `Build` resource.
  /// [tags] Tags for annotation of a `Build`. These are not docker tags.
  /// [timeout] Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is 60 minutes.
  const BuildArgs({
    this.artifacts,
    this.availableSecrets,
    this.images,
    this.location,
    this.logsBucket,
    this.options,
    this.project,
    required this.projectId,
    this.queueTtl,
    this.secrets,
    this.serviceAccount,
    this.source,
    required this.steps,
    this.substitutions,
    this.tags,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?pulumi.Input.mapOptionalInputValue<Artifacts, Map<String, dynamic>>(artifacts, (value) => value.toMap()),
      'availableSecrets': ?pulumi.Input.mapOptionalInputValue<Secrets, Map<String, dynamic>>(availableSecrets, (value) => value.toMap()),
      'images': ?images,
      'location': ?location,
      'logsBucket': ?logsBucket,
      'options': ?pulumi.Input.mapOptionalInputValue<BuildOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'project': ?project,
      'projectId': projectId,
      'queueTtl': ?queueTtl,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<Secret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<Secret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?serviceAccount,
      'source': ?pulumi.Input.mapOptionalInputValue<Source, Map<String, dynamic>>(source, (value) => value.toMap()),
      'steps': pulumi.Input.mapInputValue<List<BuildStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<BuildStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substitutions': ?substitutions,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory BuildArgs.fromMap(Map<String, dynamic> map) {
    return BuildArgs(
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Artifacts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availableSecrets: (() { final guardedValue = map['availableSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Secrets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logsBucket: (() { final guardedValue = map['logsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      queueTtl: (() { final guardedValue = map['queueTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Secret>(guardedValue, (value) => Secret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Source.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<BuildStep>(map['steps']!, (value) => BuildStep.fromMap((value as Map).cast<String, dynamic>()))),
      substitutions: (() { final guardedValue = map['substitutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


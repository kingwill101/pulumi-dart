// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_job_alert.dart';
import 'get_app_spec_job_bitbucket.dart';
import 'get_app_spec_job_env.dart';
import 'get_app_spec_job_git.dart';
import 'get_app_spec_job_github.dart';
import 'get_app_spec_job_gitlab.dart';
import 'get_app_spec_job_image.dart';
import 'get_app_spec_job_log_destination.dart';
import 'get_app_spec_job_termination.dart';

class GetAppSpecJob {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<GetAppSpecJobAlert>>? alerts;

  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final pulumi.Input<GetAppSpecJobBitbucket>? bitbucket;

  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;

  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;

  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;

  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<GetAppSpecJobEnv>>? envs;

  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final pulumi.Input<GetAppSpecJobGit>? git;

  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecJobGithub>? github;

  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecJobGitlab>? gitlab;

  /// An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecJobImage>? image;

  /// The amount of instances that this component should be scaled to.
  final pulumi.Input<int>? instanceCount;

  /// The instance size to use for this component.
  final pulumi.Input<String>? instanceSizeSlug;

  /// The type of job and when it will be run during the deployment process. It may be one of:
  /// - `UNSPECIFIED`: Default job type, will auto-complete to POST_DEPLOY kind.
  /// - `PRE_DEPLOY`: Indicates a job that runs before an app deployment.
  /// - `POST_DEPLOY`: Indicates a job that runs after an app deployment.
  /// - `FAILED_DEPLOY`: Indicates a job that runs after a component fails to deploy.
  final pulumi.Input<String>? kind;

  /// Describes a log forwarding destination.
  final pulumi.Input<List<GetAppSpecJobLogDestination>>? logDestinations;

  /// The name of the component.
  final pulumi.Input<String> name;

  /// An optional run command to override the component's default.
  final pulumi.Input<String>? runCommand;

  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;

  /// Contains a component's termination parameters.
  final pulumi.Input<GetAppSpecJobTermination>? termination;

  /// Creates a new [GetAppSpecJob].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [image] An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [instanceCount] The amount of instances that this component should be scaled to.
  /// [instanceSizeSlug] The instance size to use for this component.
  /// [kind] The type of job and when it will be run during the deployment process. It may be one of:
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  GetAppSpecJob({
    this.alerts,
    this.bitbucket,
    this.buildCommand,
    this.dockerfilePath,
    this.environmentSlug,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.image,
    this.instanceCount,
    this.instanceSizeSlug,
    this.kind,
    this.logDestinations,
    required this.name,
    this.runCommand,
    this.sourceDir,
    this.termination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecJobAlert>,
            List<Map<String, dynamic>>
          >(
            alerts,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecJobAlert,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bitbucket':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecJobBitbucket,
            Map<String, dynamic>
          >(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecJobEnv>,
            List<Map<String, dynamic>>
          >(
            envs,
            (value) =>
                pulumi.Input.encodeList<GetAppSpecJobEnv, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'git':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecJobGit,
            Map<String, dynamic>
          >(git, (value) => value.toMap()),
      'github':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecJobGithub,
            Map<String, dynamic>
          >(github, (value) => value.toMap()),
      'gitlab':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecJobGitlab,
            Map<String, dynamic>
          >(gitlab, (value) => value.toMap()),
      'image':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecJobImage,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'kind': ?kind,
      'logDestinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecJobLogDestination>,
            List<Map<String, dynamic>>
          >(
            logDestinations,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecJobLogDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecJobTermination,
            Map<String, dynamic>
          >(termination, (value) => value.toMap()),
    };
  }

  factory GetAppSpecJob.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJob(
      alerts: (() {
        final guardedValue = map['alerts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAppSpecJobAlert>(
            guardedValue,
            (value) => GetAppSpecJobAlert.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      bitbucket: (() {
        final guardedValue = map['bitbucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecJobBitbucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      buildCommand: (() {
        final guardedValue = map['buildCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerfilePath: (() {
        final guardedValue = map['dockerfilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentSlug: (() {
        final guardedValue = map['environmentSlug'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      envs: (() {
        final guardedValue = map['envs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAppSpecJobEnv>(
            guardedValue,
            (value) => GetAppSpecJobEnv.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      git: (() {
        final guardedValue = map['git'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecJobGit.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      github: (() {
        final guardedValue = map['github'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecJobGithub.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gitlab: (() {
        final guardedValue = map['gitlab'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecJobGitlab.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecJobImage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceCount: (() {
        final guardedValue = map['instanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceSizeSlug: (() {
        final guardedValue = map['instanceSizeSlug'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logDestinations: (() {
        final guardedValue = map['logDestinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAppSpecJobLogDestination>(
            guardedValue,
            (value) => GetAppSpecJobLogDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      runCommand: (() {
        final guardedValue = map['runCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDir: (() {
        final guardedValue = map['sourceDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      termination: (() {
        final guardedValue = map['termination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecJobTermination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

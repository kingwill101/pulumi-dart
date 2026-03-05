// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_job_alert.dart';
import 'app_spec_job_bitbucket.dart';
import 'app_spec_job_env.dart';
import 'app_spec_job_git.dart';
import 'app_spec_job_github.dart';
import 'app_spec_job_gitlab.dart';
import 'app_spec_job_image.dart';
import 'app_spec_job_log_destination.dart';
import 'app_spec_job_termination.dart';

class AppSpecJob {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<AppSpecJobAlert>>? alerts;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecJobBitbucket>? bitbucket;
  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;
  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<AppSpecJobEnv>>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final pulumi.Input<AppSpecJobGit>? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecJobGithub>? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecJobGitlab>? gitlab;
  /// An image to use as the component's source. Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecJobImage>? image;
  /// The amount of instances that this component should be scaled to.
  final pulumi.Input<int>? instanceCount;
  /// The instance size to use for this component. This determines the plan (basic or professional) and the available CPU and memory. The list of available instance sizes can be [found with the API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Apps/operation/apps_list_instanceSizes) or using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/) (`doctl apps tier instance-size list`). Default: `basic-xxs`
  final pulumi.Input<String>? instanceSizeSlug;
  /// The type of job and when it will be run during the deployment process. It may be one of:
  /// - `UNSPECIFIED`: Default job type, will auto-complete to POST_DEPLOY kind.
  /// - `PRE_DEPLOY`: Indicates a job that runs before an app deployment.
  /// - `POST_DEPLOY`: Indicates a job that runs after an app deployment.
  /// - `FAILED_DEPLOY`: Indicates a job that runs after a component fails to deploy.
  final pulumi.Input<String>? kind;
  /// Describes a log forwarding destination.
  final pulumi.Input<List<AppSpecJobLogDestination>>? logDestinations;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// An optional run command to override the component's default.
  final pulumi.Input<String>? runCommand;
  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;
  /// Contains a component's termination parameters.
  final pulumi.Input<AppSpecJobTermination>? termination;

  /// Creates a new [AppSpecJob].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [image] An image to use as the component's source. Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [instanceCount] The amount of instances that this component should be scaled to.
  /// [instanceSizeSlug] The instance size to use for this component. This determines the plan (basic or professional) and the available CPU and memory. The list of available instance sizes can be [found with the API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Apps/operation/apps_list_instanceSizes) or using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/) (`doctl apps tier instance-size list`). Default: `basic-xxs`
  /// [kind] The type of job and when it will be run during the deployment process. It may be one of:
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  AppSpecJob({
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
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<AppSpecJobAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<AppSpecJobAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<AppSpecJobBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AppSpecJobEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AppSpecJobEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'git': ?pulumi.Input.mapOptionalInputValue<AppSpecJobGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<AppSpecJobGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'gitlab': ?pulumi.Input.mapOptionalInputValue<AppSpecJobGitlab, Map<String, dynamic>>(gitlab, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<AppSpecJobImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'kind': ?kind,
      'logDestinations': ?pulumi.Input.mapOptionalInputValue<List<AppSpecJobLogDestination>, List<Map<String, dynamic>>>(logDestinations, (value) => pulumi.Input.encodeList<AppSpecJobLogDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?pulumi.Input.mapOptionalInputValue<AppSpecJobTermination, Map<String, dynamic>>(termination, (value) => value.toMap()),
    };
  }

  factory AppSpecJob.fromMap(Map<String, dynamic> map) {
    return AppSpecJob(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecJobAlert>(guardedValue, (value) => AppSpecJobAlert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bitbucket: (() { final guardedValue = map['bitbucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecJobBitbucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildCommand: (() { final guardedValue = map['buildCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfilePath: (() { final guardedValue = map['dockerfilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentSlug: (() { final guardedValue = map['environmentSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecJobEnv>(guardedValue, (value) => AppSpecJobEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecJobGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecJobGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlab: (() { final guardedValue = map['gitlab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecJobGitlab.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecJobImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceSizeSlug: (() { final guardedValue = map['instanceSizeSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDestinations: (() { final guardedValue = map['logDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecJobLogDestination>(guardedValue, (value) => AppSpecJobLogDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      runCommand: (() { final guardedValue = map['runCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDir: (() { final guardedValue = map['sourceDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termination: (() { final guardedValue = map['termination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecJobTermination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


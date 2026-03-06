// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_worker_alert.dart';
import 'get_app_spec_worker_autoscaling.dart';
import 'get_app_spec_worker_bitbucket.dart';
import 'get_app_spec_worker_env.dart';
import 'get_app_spec_worker_git.dart';
import 'get_app_spec_worker_github.dart';
import 'get_app_spec_worker_gitlab.dart';
import 'get_app_spec_worker_image.dart';
import 'get_app_spec_worker_log_destination.dart';
import 'get_app_spec_worker_termination.dart';

class GetAppSpecWorker {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<GetAppSpecWorkerAlert>>? alerts;
  /// Configuration for automatically scaling this component based on metrics.
  final pulumi.Input<GetAppSpecWorkerAutoscaling>? autoscaling;
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final pulumi.Input<GetAppSpecWorkerBitbucket>? bitbucket;
  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;
  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<GetAppSpecWorkerEnv>>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final pulumi.Input<GetAppSpecWorkerGit>? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecWorkerGithub>? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecWorkerGitlab>? gitlab;
  /// An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecWorkerImage>? image;
  /// The amount of instances that this component should be scaled to.
  final pulumi.Input<int>? instanceCount;
  /// The instance size to use for this component.
  final pulumi.Input<String>? instanceSizeSlug;
  /// Describes a log forwarding destination.
  final pulumi.Input<List<GetAppSpecWorkerLogDestination>>? logDestinations;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// An optional run command to override the component's default.
  final pulumi.Input<String>? runCommand;
  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;
  /// Contains a component's termination parameters.
  final pulumi.Input<GetAppSpecWorkerTermination>? termination;

  /// Creates a new [GetAppSpecWorker].
  /// [alerts] Describes an alert policy for the component.
  /// [autoscaling] Configuration for automatically scaling this component based on metrics.
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
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  const GetAppSpecWorker({
    this.alerts,
    this.autoscaling,
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
    this.logDestinations,
    required this.name,
    this.runCommand,
    this.sourceDir,
    this.termination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecWorkerAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<GetAppSpecWorkerAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecWorkerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetAppSpecWorkerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'git': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'gitlab': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerGitlab, Map<String, dynamic>>(gitlab, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'logDestinations': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecWorkerLogDestination>, List<Map<String, dynamic>>>(logDestinations, (value) => pulumi.Input.encodeList<GetAppSpecWorkerLogDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerTermination, Map<String, dynamic>>(termination, (value) => value.toMap()),
    };
  }

  factory GetAppSpecWorker.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorker(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecWorkerAlert>(guardedValue, (value) => GetAppSpecWorkerAlert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bitbucket: (() { final guardedValue = map['bitbucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerBitbucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildCommand: (() { final guardedValue = map['buildCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfilePath: (() { final guardedValue = map['dockerfilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentSlug: (() { final guardedValue = map['environmentSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecWorkerEnv>(guardedValue, (value) => GetAppSpecWorkerEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlab: (() { final guardedValue = map['gitlab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerGitlab.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceSizeSlug: (() { final guardedValue = map['instanceSizeSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDestinations: (() { final guardedValue = map['logDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecWorkerLogDestination>(guardedValue, (value) => GetAppSpecWorkerLogDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      runCommand: (() { final guardedValue = map['runCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDir: (() { final guardedValue = map['sourceDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termination: (() { final guardedValue = map['termination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerTermination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


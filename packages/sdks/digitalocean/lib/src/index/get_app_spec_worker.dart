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
  final List<GetAppSpecWorkerAlert>? alerts;
  /// Configuration for automatically scaling this component based on metrics.
  final GetAppSpecWorkerAutoscaling? autoscaling;
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final GetAppSpecWorkerBitbucket? bitbucket;
  /// An optional build command to run while building this component from source.
  final String? buildCommand;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final String? dockerfilePath;
  /// An environment slug describing the type of this app.
  final String? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final List<GetAppSpecWorkerEnv>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final GetAppSpecWorkerGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecWorkerGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecWorkerGitlab? gitlab;
  /// An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecWorkerImage? image;
  /// The amount of instances that this component should be scaled to.
  final int? instanceCount;
  /// The instance size to use for this component.
  final String? instanceSizeSlug;
  /// Describes a log forwarding destination.
  final List<GetAppSpecWorkerLogDestination>? logDestinations;
  /// The name of the component.
  final String name;
  /// An optional run command to override the component's default.
  final String? runCommand;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;
  /// Contains a component's termination parameters.
  final GetAppSpecWorkerTermination? termination;

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
  GetAppSpecWorker({
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
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<GetAppSpecWorkerAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'autoscaling': ?autoscaling == null ? null : autoscaling!.toMap(),
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'buildCommand': ?buildCommand,
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<GetAppSpecWorkerEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'logDestinations': ?logDestinations == null ? null : pulumi.Input.encodeList<GetAppSpecWorkerLogDestination, Map<String, dynamic>>(logDestinations!, (value) => value.toMap()),
      'name': name,
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?termination == null ? null : termination!.toMap(),
    };
  }

  factory GetAppSpecWorker.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorker(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<GetAppSpecWorkerAlert>(map['alerts'], (value) => GetAppSpecWorkerAlert.fromMap((value as Map).cast<String, dynamic>())),
      autoscaling: map['autoscaling'] == null ? null : GetAppSpecWorkerAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>()),
      bitbucket: map['bitbucket'] == null ? null : GetAppSpecWorkerBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      buildCommand: map['buildCommand'] == null ? null : map['buildCommand'] as String,
      dockerfilePath: map['dockerfilePath'] == null ? null : map['dockerfilePath'] as String,
      environmentSlug: map['environmentSlug'] == null ? null : map['environmentSlug'] as String,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<GetAppSpecWorkerEnv>(map['envs'], (value) => GetAppSpecWorkerEnv.fromMap((value as Map).cast<String, dynamic>())),
      git: map['git'] == null ? null : GetAppSpecWorkerGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : GetAppSpecWorkerGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : GetAppSpecWorkerGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : GetAppSpecWorkerImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSizeSlug: map['instanceSizeSlug'] == null ? null : map['instanceSizeSlug'] as String,
      logDestinations: map['logDestinations'] == null ? null : pulumi.Input.decodeList<GetAppSpecWorkerLogDestination>(map['logDestinations'], (value) => GetAppSpecWorkerLogDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      runCommand: map['runCommand'] == null ? null : map['runCommand'] as String,
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
      termination: map['termination'] == null ? null : GetAppSpecWorkerTermination.fromMap((map['termination'] as Map).cast<String, dynamic>()),
    );
  }
}


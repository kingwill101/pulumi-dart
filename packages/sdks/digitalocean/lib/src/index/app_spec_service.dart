// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_service_alert.dart';
import 'app_spec_service_autoscaling.dart';
import 'app_spec_service_bitbucket.dart';
import 'app_spec_service_cors.dart';
import 'app_spec_service_env.dart';
import 'app_spec_service_git.dart';
import 'app_spec_service_github.dart';
import 'app_spec_service_gitlab.dart';
import 'app_spec_service_health_check.dart';
import 'app_spec_service_image.dart';
import 'app_spec_service_log_destination.dart';
import 'app_spec_service_route.dart';
import 'app_spec_service_termination.dart';

class AppSpecService {
  /// Describes an alert policy for the component.
  final List<AppSpecServiceAlert>? alerts;
  /// Configuration for automatically scaling this component based on metrics.
  final AppSpecServiceAutoscaling? autoscaling;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final AppSpecServiceBitbucket? bitbucket;
  /// An optional build command to run while building this component from source.
  final String? buildCommand;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final AppSpecServiceCors? cors;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final String? dockerfilePath;
  /// An environment slug describing the type of this app.
  final String? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final List<AppSpecServiceEnv>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final AppSpecServiceGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecServiceGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecServiceGitlab? gitlab;
  /// A health check to determine the availability of this component.
  final AppSpecServiceHealthCheck? healthCheck;
  /// The internal port on which this service's run command will listen.
  final int? httpPort;
  /// An image to use as the component's source. Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecServiceImage? image;
  /// The amount of instances that this component should be scaled to.
  final int? instanceCount;
  /// The instance size to use for this component. This determines the plan (basic or professional) and the available CPU and memory. The list of available instance sizes can be [found with the API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Apps/operation/apps_list_instanceSizes) or using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/) (`doctl apps tier instance-size list`). Default: `basic-xxs`
  final String? instanceSizeSlug;
  /// A list of ports on which this service will listen for internal traffic.
  final List<int>? internalPorts;
  /// Describes a log forwarding destination.
  final List<AppSpecServiceLogDestination>? logDestinations;
  /// The name of the component.
  final String name;
  /// An HTTP paths that should be routed to this component.
  final List<AppSpecServiceRoute>? routes;
  /// An optional run command to override the component's default.
  final String? runCommand;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;
  /// Contains a component's termination parameters.
  final AppSpecServiceTermination? termination;

  /// Creates a new [AppSpecService].
  /// [alerts] Describes an alert policy for the component.
  /// [autoscaling] Configuration for automatically scaling this component based on metrics.
  /// [bitbucket] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [healthCheck] A health check to determine the availability of this component.
  /// [httpPort] The internal port on which this service's run command will listen.
  /// [image] An image to use as the component's source. Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [instanceCount] The amount of instances that this component should be scaled to.
  /// [instanceSizeSlug] The instance size to use for this component. This determines the plan (basic or professional) and the available CPU and memory. The list of available instance sizes can be [found with the API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Apps/operation/apps_list_instanceSizes) or using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/) (`doctl apps tier instance-size list`). Default: `basic-xxs`
  /// [internalPorts] A list of ports on which this service will listen for internal traffic.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] An HTTP paths that should be routed to this component.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  AppSpecService({
    this.alerts,
    this.autoscaling,
    this.bitbucket,
    this.buildCommand,
    this.cors,
    this.dockerfilePath,
    this.environmentSlug,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.healthCheck,
    this.httpPort,
    this.image,
    this.instanceCount,
    this.instanceSizeSlug,
    this.internalPorts,
    this.logDestinations,
    required this.name,
    this.routes,
    this.runCommand,
    this.sourceDir,
    this.termination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<AppSpecServiceAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'autoscaling': ?autoscaling == null ? null : autoscaling!.toMap(),
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'buildCommand': ?buildCommand,
      'cors': ?cors == null ? null : cors!.toMap(),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<AppSpecServiceEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'healthCheck': ?healthCheck == null ? null : healthCheck!.toMap(),
      'httpPort': ?httpPort,
      'image': ?image == null ? null : image!.toMap(),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'internalPorts': ?internalPorts,
      'logDestinations': ?logDestinations == null ? null : pulumi.Input.encodeList<AppSpecServiceLogDestination, Map<String, dynamic>>(logDestinations!, (value) => value.toMap()),
      'name': name,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<AppSpecServiceRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?termination == null ? null : termination!.toMap(),
    };
  }

  factory AppSpecService.fromMap(Map<String, dynamic> map) {
    return AppSpecService(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<AppSpecServiceAlert>(map['alerts'], (value) => AppSpecServiceAlert.fromMap((value as Map).cast<String, dynamic>())),
      autoscaling: map['autoscaling'] == null ? null : AppSpecServiceAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>()),
      bitbucket: map['bitbucket'] == null ? null : AppSpecServiceBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      buildCommand: map['buildCommand'] == null ? null : map['buildCommand'] as String,
      cors: map['cors'] == null ? null : AppSpecServiceCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      dockerfilePath: map['dockerfilePath'] == null ? null : map['dockerfilePath'] as String,
      environmentSlug: map['environmentSlug'] == null ? null : map['environmentSlug'] as String,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<AppSpecServiceEnv>(map['envs'], (value) => AppSpecServiceEnv.fromMap((value as Map).cast<String, dynamic>())),
      git: map['git'] == null ? null : AppSpecServiceGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : AppSpecServiceGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : AppSpecServiceGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      healthCheck: map['healthCheck'] == null ? null : AppSpecServiceHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>()),
      httpPort: map['httpPort'] == null ? null : map['httpPort'] as int,
      image: map['image'] == null ? null : AppSpecServiceImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSizeSlug: map['instanceSizeSlug'] == null ? null : map['instanceSizeSlug'] as String,
      internalPorts: map['internalPorts'] == null ? null : (map['internalPorts'] as List).cast<int>(),
      logDestinations: map['logDestinations'] == null ? null : pulumi.Input.decodeList<AppSpecServiceLogDestination>(map['logDestinations'], (value) => AppSpecServiceLogDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<AppSpecServiceRoute>(map['routes'], (value) => AppSpecServiceRoute.fromMap((value as Map).cast<String, dynamic>())),
      runCommand: map['runCommand'] == null ? null : map['runCommand'] as String,
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
      termination: map['termination'] == null ? null : AppSpecServiceTermination.fromMap((map['termination'] as Map).cast<String, dynamic>()),
    );
  }
}


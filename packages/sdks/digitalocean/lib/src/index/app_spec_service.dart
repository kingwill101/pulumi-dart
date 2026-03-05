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
  final pulumi.Input<List<AppSpecServiceAlert>>? alerts;
  /// Configuration for automatically scaling this component based on metrics.
  final pulumi.Input<AppSpecServiceAutoscaling>? autoscaling;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecServiceBitbucket>? bitbucket;
  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<AppSpecServiceCors>? cors;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;
  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<AppSpecServiceEnv>>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final pulumi.Input<AppSpecServiceGit>? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecServiceGithub>? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecServiceGitlab>? gitlab;
  /// A health check to determine the availability of this component.
  final pulumi.Input<AppSpecServiceHealthCheck>? healthCheck;
  /// The internal port on which this service's run command will listen.
  final pulumi.Input<int>? httpPort;
  /// An image to use as the component's source. Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecServiceImage>? image;
  /// The amount of instances that this component should be scaled to.
  final pulumi.Input<int>? instanceCount;
  /// The instance size to use for this component. This determines the plan (basic or professional) and the available CPU and memory. The list of available instance sizes can be [found with the API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Apps/operation/apps_list_instanceSizes) or using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/) (`doctl apps tier instance-size list`). Default: `basic-xxs`
  final pulumi.Input<String>? instanceSizeSlug;
  /// A list of ports on which this service will listen for internal traffic.
  final pulumi.Input<List<int>>? internalPorts;
  /// Describes a log forwarding destination.
  final pulumi.Input<List<AppSpecServiceLogDestination>>? logDestinations;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// An HTTP paths that should be routed to this component.
  final pulumi.Input<List<AppSpecServiceRoute>>? routes;
  /// An optional run command to override the component's default.
  final pulumi.Input<String>? runCommand;
  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;
  /// Contains a component's termination parameters.
  final pulumi.Input<AppSpecServiceTermination>? termination;

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
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<AppSpecServiceAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<AppSpecServiceAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'cors': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AppSpecServiceEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AppSpecServiceEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'git': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'gitlab': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceGitlab, Map<String, dynamic>>(gitlab, (value) => value.toMap()),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'httpPort': ?httpPort,
      'image': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'internalPorts': ?internalPorts,
      'logDestinations': ?pulumi.Input.mapOptionalInputValue<List<AppSpecServiceLogDestination>, List<Map<String, dynamic>>>(logDestinations, (value) => pulumi.Input.encodeList<AppSpecServiceLogDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<AppSpecServiceRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<AppSpecServiceRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceTermination, Map<String, dynamic>>(termination, (value) => value.toMap()),
    };
  }

  factory AppSpecService.fromMap(Map<String, dynamic> map) {
    return AppSpecService(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecServiceAlert>(guardedValue, (value) => AppSpecServiceAlert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bitbucket: (() { final guardedValue = map['bitbucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceBitbucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildCommand: (() { final guardedValue = map['buildCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerfilePath: (() { final guardedValue = map['dockerfilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentSlug: (() { final guardedValue = map['environmentSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecServiceEnv>(guardedValue, (value) => AppSpecServiceEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlab: (() { final guardedValue = map['gitlab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceGitlab.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceSizeSlug: (() { final guardedValue = map['instanceSizeSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalPorts: (() { final guardedValue = map['internalPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      logDestinations: (() { final guardedValue = map['logDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecServiceLogDestination>(guardedValue, (value) => AppSpecServiceLogDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecServiceRoute>(guardedValue, (value) => AppSpecServiceRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      runCommand: (() { final guardedValue = map['runCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDir: (() { final guardedValue = map['sourceDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termination: (() { final guardedValue = map['termination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceTermination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


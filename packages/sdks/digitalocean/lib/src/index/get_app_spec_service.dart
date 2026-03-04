// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_alert.dart';
import 'get_app_spec_service_autoscaling.dart';
import 'get_app_spec_service_bitbucket.dart';
import 'get_app_spec_service_cors.dart';
import 'get_app_spec_service_env.dart';
import 'get_app_spec_service_git.dart';
import 'get_app_spec_service_github.dart';
import 'get_app_spec_service_gitlab.dart';
import 'get_app_spec_service_health_check.dart';
import 'get_app_spec_service_image.dart';
import 'get_app_spec_service_log_destination.dart';
import 'get_app_spec_service_route.dart';
import 'get_app_spec_service_termination.dart';

class GetAppSpecService {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<GetAppSpecServiceAlert>>? alerts;

  /// Configuration for automatically scaling this component based on metrics.
  final pulumi.Input<GetAppSpecServiceAutoscaling>? autoscaling;

  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final pulumi.Input<GetAppSpecServiceBitbucket>? bitbucket;

  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;

  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<GetAppSpecServiceCors>? cors;

  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;

  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;

  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<GetAppSpecServiceEnv>>? envs;

  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final pulumi.Input<GetAppSpecServiceGit>? git;

  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecServiceGithub>? github;

  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecServiceGitlab>? gitlab;

  /// A health check to determine the availability of this component.
  final pulumi.Input<GetAppSpecServiceHealthCheck>? healthCheck;

  /// The internal port on which this service's run command will listen.
  final pulumi.Input<int> httpPort;

  /// An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecServiceImage>? image;

  /// The amount of instances that this component should be scaled to.
  final pulumi.Input<int>? instanceCount;

  /// The instance size to use for this component.
  final pulumi.Input<String>? instanceSizeSlug;

  /// A list of ports on which this service will listen for internal traffic.
  final pulumi.Input<List<int>> internalPorts;

  /// Describes a log forwarding destination.
  final pulumi.Input<List<GetAppSpecServiceLogDestination>>? logDestinations;

  /// The name of the component.
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetAppSpecServiceRoute>> routes;

  /// An optional run command to override the component's default.
  final pulumi.Input<String> runCommand;

  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;

  /// Contains a component's termination parameters.
  final pulumi.Input<GetAppSpecServiceTermination>? termination;

  /// Creates a new [GetAppSpecService].
  /// [alerts] Describes an alert policy for the component.
  /// [autoscaling] Configuration for automatically scaling this component based on metrics.
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [healthCheck] A health check to determine the availability of this component.
  /// [httpPort] The internal port on which this service's run command will listen.
  /// [image] An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [instanceCount] The amount of instances that this component should be scaled to.
  /// [instanceSizeSlug] The instance size to use for this component.
  /// [internalPorts] A list of ports on which this service will listen for internal traffic.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] Required.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  GetAppSpecService({
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
    required this.httpPort,
    this.image,
    this.instanceCount,
    this.instanceSizeSlug,
    required this.internalPorts,
    this.logDestinations,
    required this.name,
    required this.routes,
    required this.runCommand,
    this.sourceDir,
    this.termination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecServiceAlert>,
            List<Map<String, dynamic>>
          >(
            alerts,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecServiceAlert,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'autoscaling':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceAutoscaling,
            Map<String, dynamic>
          >(autoscaling, (value) => value.toMap()),
      'bitbucket':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceBitbucket,
            Map<String, dynamic>
          >(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceCors,
            Map<String, dynamic>
          >(cors, (value) => value.toMap()),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecServiceEnv>,
            List<Map<String, dynamic>>
          >(
            envs,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecServiceEnv,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'git':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceGit,
            Map<String, dynamic>
          >(git, (value) => value.toMap()),
      'github':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceGithub,
            Map<String, dynamic>
          >(github, (value) => value.toMap()),
      'gitlab':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceGitlab,
            Map<String, dynamic>
          >(gitlab, (value) => value.toMap()),
      'healthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceHealthCheck,
            Map<String, dynamic>
          >(healthCheck, (value) => value.toMap()),
      'httpPort': httpPort,
      'image':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceImage,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'internalPorts': internalPorts,
      'logDestinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecServiceLogDestination>,
            List<Map<String, dynamic>>
          >(
            logDestinations,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecServiceLogDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'routes':
          pulumi.Input.mapInputValue<
            List<GetAppSpecServiceRoute>,
            List<Map<String, dynamic>>
          >(
            routes,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecServiceRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runCommand': runCommand,
      'sourceDir': ?sourceDir,
      'termination':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecServiceTermination,
            Map<String, dynamic>
          >(termination, (value) => value.toMap()),
    };
  }

  factory GetAppSpecService.fromMap(Map<String, dynamic> map) {
    return GetAppSpecService(
      alerts: (() {
        final guardedValue = map['alerts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAppSpecServiceAlert>(
            guardedValue,
            (value) => GetAppSpecServiceAlert.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      autoscaling: (() {
        final guardedValue = map['autoscaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceAutoscaling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bitbucket: (() {
        final guardedValue = map['bitbucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceBitbucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      buildCommand: (() {
        final guardedValue = map['buildCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceCors.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
          pulumi.Input.decodeList<GetAppSpecServiceEnv>(
            guardedValue,
            (value) => GetAppSpecServiceEnv.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      git: (() {
        final guardedValue = map['git'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceGit.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      github: (() {
        final guardedValue = map['github'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceGithub.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gitlab: (() {
        final guardedValue = map['gitlab'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceGitlab.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      healthCheck: (() {
        final guardedValue = map['healthCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceHealthCheck.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpPort: pulumi.Input.fromValue(map['httpPort'] as int),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceImage.fromMap(
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
      internalPorts: pulumi.Input.fromValue(
        (map['internalPorts'] as List).cast<int>(),
      ),
      logDestinations: (() {
        final guardedValue = map['logDestinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAppSpecServiceLogDestination>(
            guardedValue,
            (value) => GetAppSpecServiceLogDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAppSpecServiceRoute>(
          map['routes']!,
          (value) => GetAppSpecServiceRoute.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      runCommand: pulumi.Input.fromValue(map['runCommand'] as String),
      sourceDir: (() {
        final guardedValue = map['sourceDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      termination: (() {
        final guardedValue = map['termination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecServiceTermination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

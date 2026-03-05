// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_alert.dart';
import 'get_app_spec_function_bitbucket.dart';
import 'get_app_spec_function_cors.dart';
import 'get_app_spec_function_env.dart';
import 'get_app_spec_function_git.dart';
import 'get_app_spec_function_github.dart';
import 'get_app_spec_function_gitlab.dart';
import 'get_app_spec_function_log_destination.dart';
import 'get_app_spec_function_route.dart';

class GetAppSpecFunction {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<GetAppSpecFunctionAlert>>? alerts;
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final pulumi.Input<GetAppSpecFunctionBitbucket>? bitbucket;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<GetAppSpecFunctionCors>? cors;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<GetAppSpecFunctionEnv>>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final pulumi.Input<GetAppSpecFunctionGit>? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecFunctionGithub>? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecFunctionGitlab>? gitlab;
  /// Describes a log forwarding destination.
  final pulumi.Input<List<GetAppSpecFunctionLogDestination>>? logDestinations;
  /// The name of the component.
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetAppSpecFunctionRoute>> routes;
  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;

  /// Creates a new [GetAppSpecFunction].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] Required.
  /// [sourceDir] An optional path to the working directory to use for the build.
  GetAppSpecFunction({
    this.alerts,
    this.bitbucket,
    this.cors,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.logDestinations,
    required this.name,
    required this.routes,
    this.sourceDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecFunctionAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<GetAppSpecFunctionAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'envs': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecFunctionEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetAppSpecFunctionEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'git': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'gitlab': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionGitlab, Map<String, dynamic>>(gitlab, (value) => value.toMap()),
      'logDestinations': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecFunctionLogDestination>, List<Map<String, dynamic>>>(logDestinations, (value) => pulumi.Input.encodeList<GetAppSpecFunctionLogDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'routes': pulumi.Input.mapInputValue<List<GetAppSpecFunctionRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<GetAppSpecFunctionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDir': ?sourceDir,
    };
  }

  factory GetAppSpecFunction.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunction(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecFunctionAlert>(guardedValue, (value) => GetAppSpecFunctionAlert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bitbucket: (() { final guardedValue = map['bitbucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionBitbucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecFunctionEnv>(guardedValue, (value) => GetAppSpecFunctionEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlab: (() { final guardedValue = map['gitlab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionGitlab.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logDestinations: (() { final guardedValue = map['logDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecFunctionLogDestination>(guardedValue, (value) => GetAppSpecFunctionLogDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecFunctionRoute>(map['routes']!, (value) => GetAppSpecFunctionRoute.fromMap((value as Map).cast<String, dynamic>()))),
      sourceDir: (() { final guardedValue = map['sourceDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


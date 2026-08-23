// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_function_alert.dart';
import 'app_spec_function_bitbucket.dart';
import 'app_spec_function_cors.dart';
import 'app_spec_function_env.dart';
import 'app_spec_function_git.dart';
import 'app_spec_function_github.dart';
import 'app_spec_function_gitlab.dart';
import 'app_spec_function_log_destination.dart';
import 'app_spec_function_route.dart';

class AppSpecFunction {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<AppSpecFunctionAlert>>? alerts;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecFunctionBitbucket>? bitbucket;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<AppSpecFunctionCors>? cors;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<AppSpecFunctionEnv>>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final pulumi.Input<AppSpecFunctionGit>? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecFunctionGithub>? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecFunctionGitlab>? gitlab;
  /// Describes a log forwarding destination.
  final pulumi.Input<List<AppSpecFunctionLogDestination>>? logDestinations;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// An HTTP paths that should be routed to this component.
  final pulumi.Input<List<AppSpecFunctionRoute>>? routes;
  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;

  /// Creates a new [AppSpecFunction].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] An HTTP paths that should be routed to this component.
  /// [sourceDir] An optional path to the working directory to use for the build.
  const AppSpecFunction({
    this.alerts,
    this.bitbucket,
    this.cors,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.logDestinations,
    required this.name,
    this.routes,
    this.sourceDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<AppSpecFunctionAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<AppSpecFunctionAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AppSpecFunctionEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AppSpecFunctionEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'git': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'gitlab': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionGitlab, Map<String, dynamic>>(gitlab, (value) => value.toMap()),
      'logDestinations': ?pulumi.Input.mapOptionalInputValue<List<AppSpecFunctionLogDestination>, List<Map<String, dynamic>>>(logDestinations, (value) => pulumi.Input.encodeList<AppSpecFunctionLogDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<AppSpecFunctionRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<AppSpecFunctionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDir': ?sourceDir,
    };
  }

  factory AppSpecFunction.fromMap(Map<String, dynamic> map) {
    return AppSpecFunction(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecFunctionAlert>(guardedValue, (value) => AppSpecFunctionAlert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bitbucket: (() { final guardedValue = map['bitbucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecFunctionBitbucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecFunctionCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecFunctionEnv>(guardedValue, (value) => AppSpecFunctionEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecFunctionGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecFunctionGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlab: (() { final guardedValue = map['gitlab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecFunctionGitlab.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logDestinations: (() { final guardedValue = map['logDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecFunctionLogDestination>(guardedValue, (value) => AppSpecFunctionLogDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecFunctionRoute>(guardedValue, (value) => AppSpecFunctionRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceDir: (() { final guardedValue = map['sourceDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

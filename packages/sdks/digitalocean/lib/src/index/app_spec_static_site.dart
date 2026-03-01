// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_static_site_bitbucket.dart';
import 'app_spec_static_site_cors.dart';
import 'app_spec_static_site_env.dart';
import 'app_spec_static_site_git.dart';
import 'app_spec_static_site_github.dart';
import 'app_spec_static_site_gitlab.dart';
import 'app_spec_static_site_route.dart';

class AppSpecStaticSite {
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final AppSpecStaticSiteBitbucket? bitbucket;
  /// An optional build command to run while building this component from source.
  final String? buildCommand;
  /// The name of the document to use as the fallback for any requests to documents that are not found when serving this static site.
  final String? catchallDocument;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final AppSpecStaticSiteCors? cors;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final String? dockerfilePath;
  /// An environment slug describing the type of this app.
  final String? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final List<AppSpecStaticSiteEnv>? envs;
  /// The name of the error document to use when serving this static site.
  final String? errorDocument;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final AppSpecStaticSiteGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecStaticSiteGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecStaticSiteGitlab? gitlab;
  /// The name of the index document to use when serving this static site.
  final String? indexDocument;
  /// The name of the component.
  final String name;
  /// An optional path to where the built assets will be located, relative to the build context. If not set, App Platform will automatically scan for these directory names: `_static`, `dist`, `public`.
  final String? outputDir;
  /// An HTTP paths that should be routed to this component.
  final List<AppSpecStaticSiteRoute>? routes;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;

  /// Creates a new [AppSpecStaticSite].
  /// [bitbucket] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [catchallDocument] The name of the document to use as the fallback for any requests to documents that are not found when serving this static site.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [errorDocument] The name of the error document to use when serving this static site.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [indexDocument] The name of the index document to use when serving this static site.
  /// [name] The name of the component.
  /// [outputDir] An optional path to where the built assets will be located, relative to the build context. If not set, App Platform will automatically scan for these directory names: `_static`, `dist`, `public`.
  /// [routes] An HTTP paths that should be routed to this component.
  /// [sourceDir] An optional path to the working directory to use for the build.
  AppSpecStaticSite({
    this.bitbucket,
    this.buildCommand,
    this.catchallDocument,
    this.cors,
    this.dockerfilePath,
    this.environmentSlug,
    this.envs,
    this.errorDocument,
    this.git,
    this.github,
    this.gitlab,
    this.indexDocument,
    required this.name,
    this.outputDir,
    this.routes,
    this.sourceDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'buildCommand': ?buildCommand,
      'catchallDocument': ?catchallDocument,
      'cors': ?cors == null ? null : cors!.toMap(),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<AppSpecStaticSiteEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'errorDocument': ?errorDocument,
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'indexDocument': ?indexDocument,
      'name': name,
      'outputDir': ?outputDir,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<AppSpecStaticSiteRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'sourceDir': ?sourceDir,
    };
  }

  factory AppSpecStaticSite.fromMap(Map<String, dynamic> map) {
    return AppSpecStaticSite(
      bitbucket: map['bitbucket'] == null ? null : AppSpecStaticSiteBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      buildCommand: map['buildCommand'] == null ? null : map['buildCommand'] as String,
      catchallDocument: map['catchallDocument'] == null ? null : map['catchallDocument'] as String,
      cors: map['cors'] == null ? null : AppSpecStaticSiteCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      dockerfilePath: map['dockerfilePath'] == null ? null : map['dockerfilePath'] as String,
      environmentSlug: map['environmentSlug'] == null ? null : map['environmentSlug'] as String,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<AppSpecStaticSiteEnv>(map['envs'], (value) => AppSpecStaticSiteEnv.fromMap((value as Map).cast<String, dynamic>())),
      errorDocument: map['errorDocument'] == null ? null : map['errorDocument'] as String,
      git: map['git'] == null ? null : AppSpecStaticSiteGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : AppSpecStaticSiteGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : AppSpecStaticSiteGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      indexDocument: map['indexDocument'] == null ? null : map['indexDocument'] as String,
      name: map['name'] as String,
      outputDir: map['outputDir'] == null ? null : map['outputDir'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<AppSpecStaticSiteRoute>(map['routes'], (value) => AppSpecStaticSiteRoute.fromMap((value as Map).cast<String, dynamic>())),
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
    );
  }
}


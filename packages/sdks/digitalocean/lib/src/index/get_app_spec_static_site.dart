// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_static_site_bitbucket.dart';
import 'get_app_spec_static_site_cors.dart';
import 'get_app_spec_static_site_env.dart';
import 'get_app_spec_static_site_git.dart';
import 'get_app_spec_static_site_github.dart';
import 'get_app_spec_static_site_gitlab.dart';
import 'get_app_spec_static_site_route.dart';

class GetAppSpecStaticSite {
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final pulumi.Input<GetAppSpecStaticSiteBitbucket>? bitbucket;
  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;
  /// The name of the document to use as the fallback for any requests to documents that are not found when serving this static site.
  final pulumi.Input<String>? catchallDocument;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<GetAppSpecStaticSiteCors>? cors;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;
  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<GetAppSpecStaticSiteEnv>>? envs;
  /// The name of the error document to use when serving this static site.
  final pulumi.Input<String>? errorDocument;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final pulumi.Input<GetAppSpecStaticSiteGit>? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecStaticSiteGithub>? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final pulumi.Input<GetAppSpecStaticSiteGitlab>? gitlab;
  /// The name of the index document to use when serving this static site.
  final pulumi.Input<String>? indexDocument;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// An optional path to where the built assets will be located, relative to the build context. If not set, App Platform will automatically scan for these directory names: `_static`, `dist`, `public`.
  final pulumi.Input<String>? outputDir;
  final pulumi.Input<List<GetAppSpecStaticSiteRoute>> routes;
  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;

  /// Creates a new [GetAppSpecStaticSite].
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [catchallDocument] The name of the document to use as the fallback for any requests to documents that are not found when serving this static site.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [errorDocument] The name of the error document to use when serving this static site.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [indexDocument] The name of the index document to use when serving this static site.
  /// [name] The name of the component.
  /// [outputDir] An optional path to where the built assets will be located, relative to the build context. If not set, App Platform will automatically scan for these directory names: `_static`, `dist`, `public`.
  /// [routes] Required.
  /// [sourceDir] An optional path to the working directory to use for the build.
  GetAppSpecStaticSite({
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
    required this.routes,
    this.sourceDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<GetAppSpecStaticSiteBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'catchallDocument': ?catchallDocument,
      'cors': ?pulumi.Input.mapOptionalInputValue<GetAppSpecStaticSiteCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecStaticSiteEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetAppSpecStaticSiteEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorDocument': ?errorDocument,
      'git': ?pulumi.Input.mapOptionalInputValue<GetAppSpecStaticSiteGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<GetAppSpecStaticSiteGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'gitlab': ?pulumi.Input.mapOptionalInputValue<GetAppSpecStaticSiteGitlab, Map<String, dynamic>>(gitlab, (value) => value.toMap()),
      'indexDocument': ?indexDocument,
      'name': name,
      'outputDir': ?outputDir,
      'routes': pulumi.Input.mapInputValue<List<GetAppSpecStaticSiteRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<GetAppSpecStaticSiteRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDir': ?sourceDir,
    };
  }

  factory GetAppSpecStaticSite.fromMap(Map<String, dynamic> map) {
    return GetAppSpecStaticSite(
      bitbucket: map['bitbucket'] == null ? null : (GetAppSpecStaticSiteBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>())).input(),
      buildCommand: map['buildCommand'] == null ? null : (map['buildCommand'] as String).input(),
      catchallDocument: map['catchallDocument'] == null ? null : (map['catchallDocument'] as String).input(),
      cors: map['cors'] == null ? null : (GetAppSpecStaticSiteCors.fromMap((map['cors'] as Map).cast<String, dynamic>())).input(),
      dockerfilePath: map['dockerfilePath'] == null ? null : (map['dockerfilePath'] as String).input(),
      environmentSlug: map['environmentSlug'] == null ? null : (map['environmentSlug'] as String).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<GetAppSpecStaticSiteEnv>(map['envs'], (value) => GetAppSpecStaticSiteEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errorDocument: map['errorDocument'] == null ? null : (map['errorDocument'] as String).input(),
      git: map['git'] == null ? null : (GetAppSpecStaticSiteGit.fromMap((map['git'] as Map).cast<String, dynamic>())).input(),
      github: map['github'] == null ? null : (GetAppSpecStaticSiteGithub.fromMap((map['github'] as Map).cast<String, dynamic>())).input(),
      gitlab: map['gitlab'] == null ? null : (GetAppSpecStaticSiteGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>())).input(),
      indexDocument: map['indexDocument'] == null ? null : (map['indexDocument'] as String).input(),
      name: (map['name'] as String).input(),
      outputDir: map['outputDir'] == null ? null : (map['outputDir'] as String).input(),
      routes: (pulumi.Input.decodeList<GetAppSpecStaticSiteRoute>(map['routes'], (value) => GetAppSpecStaticSiteRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceDir: map['sourceDir'] == null ? null : (map['sourceDir'] as String).input(),
    );
  }
}


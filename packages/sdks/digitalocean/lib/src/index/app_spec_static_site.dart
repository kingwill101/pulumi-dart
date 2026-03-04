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
  final pulumi.Input<AppSpecStaticSiteBitbucket>? bitbucket;

  /// An optional build command to run while building this component from source.
  final pulumi.Input<String>? buildCommand;

  /// The name of the document to use as the fallback for any requests to documents that are not found when serving this static site.
  final pulumi.Input<String>? catchallDocument;

  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<AppSpecStaticSiteCors>? cors;

  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final pulumi.Input<String>? dockerfilePath;

  /// An environment slug describing the type of this app.
  final pulumi.Input<String>? environmentSlug;

  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<AppSpecStaticSiteEnv>>? envs;

  /// The name of the error document to use when serving this static site.
  final pulumi.Input<String>? errorDocument;

  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final pulumi.Input<AppSpecStaticSiteGit>? git;

  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecStaticSiteGithub>? github;

  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final pulumi.Input<AppSpecStaticSiteGitlab>? gitlab;

  /// The name of the index document to use when serving this static site.
  final pulumi.Input<String>? indexDocument;

  /// The name of the component.
  final pulumi.Input<String> name;

  /// An optional path to where the built assets will be located, relative to the build context. If not set, App Platform will automatically scan for these directory names: `_static`, `dist`, `public`.
  final pulumi.Input<String>? outputDir;

  /// An HTTP paths that should be routed to this component.
  final pulumi.Input<List<AppSpecStaticSiteRoute>>? routes;

  /// An optional path to the working directory to use for the build.
  final pulumi.Input<String>? sourceDir;

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
      'bitbucket':
          ?pulumi.Input.mapOptionalInputValue<
            AppSpecStaticSiteBitbucket,
            Map<String, dynamic>
          >(bitbucket, (value) => value.toMap()),
      'buildCommand': ?buildCommand,
      'catchallDocument': ?catchallDocument,
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            AppSpecStaticSiteCors,
            Map<String, dynamic>
          >(cors, (value) => value.toMap()),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppSpecStaticSiteEnv>,
            List<Map<String, dynamic>>
          >(
            envs,
            (value) =>
                pulumi.Input.encodeList<
                  AppSpecStaticSiteEnv,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'errorDocument': ?errorDocument,
      'git':
          ?pulumi.Input.mapOptionalInputValue<
            AppSpecStaticSiteGit,
            Map<String, dynamic>
          >(git, (value) => value.toMap()),
      'github':
          ?pulumi.Input.mapOptionalInputValue<
            AppSpecStaticSiteGithub,
            Map<String, dynamic>
          >(github, (value) => value.toMap()),
      'gitlab':
          ?pulumi.Input.mapOptionalInputValue<
            AppSpecStaticSiteGitlab,
            Map<String, dynamic>
          >(gitlab, (value) => value.toMap()),
      'indexDocument': ?indexDocument,
      'name': name,
      'outputDir': ?outputDir,
      'routes':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppSpecStaticSiteRoute>,
            List<Map<String, dynamic>>
          >(
            routes,
            (value) =>
                pulumi.Input.encodeList<
                  AppSpecStaticSiteRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceDir': ?sourceDir,
    };
  }

  factory AppSpecStaticSite.fromMap(Map<String, dynamic> map) {
    return AppSpecStaticSite(
      bitbucket: (() {
        final guardedValue = map['bitbucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpecStaticSiteBitbucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      buildCommand: (() {
        final guardedValue = map['buildCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      catchallDocument: (() {
        final guardedValue = map['catchallDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpecStaticSiteCors.fromMap(
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
          pulumi.Input.decodeList<AppSpecStaticSiteEnv>(
            guardedValue,
            (value) => AppSpecStaticSiteEnv.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      errorDocument: (() {
        final guardedValue = map['errorDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      git: (() {
        final guardedValue = map['git'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpecStaticSiteGit.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      github: (() {
        final guardedValue = map['github'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpecStaticSiteGithub.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gitlab: (() {
        final guardedValue = map['gitlab'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpecStaticSiteGitlab.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      indexDocument: (() {
        final guardedValue = map['indexDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputDir: (() {
        final guardedValue = map['outputDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppSpecStaticSiteRoute>(
            guardedValue,
            (value) => AppSpecStaticSiteRoute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourceDir: (() {
        final guardedValue = map['sourceDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

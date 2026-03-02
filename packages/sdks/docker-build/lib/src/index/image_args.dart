// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_context.dart';
import 'builder_config.dart';
import 'cache_from.dart';
import 'cache_to.dart';
import 'dockerfile.dart';
import 'export.dart';
import 'network_mode.dart';
import 'platform.dart';
import 'registry.dart';
import 'ssh.dart';

/// {@template pulumi_index_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_index_image_args_doc}
class ImageArgs {
  /// Custom `host:ip` mappings to use during the build.
  ///
  /// Equivalent to Docker's `--add-host` flag.
  final pulumi.Input<List<String>>? addHosts;
  /// `ARG` names and values to set during the build.
  ///
  /// These variables are accessed like environment variables inside `RUN`
  /// instructions.
  ///
  /// Build arguments are persisted in the image, so you should use `secrets`
  /// if these arguments are sensitive.
  ///
  /// Equivalent to Docker's `--build-arg` flag.
  final pulumi.Input<Map<String, String>>? buildArgs;
  /// Setting this to `false` will always skip image builds during previews,
  /// and setting it to `true` will always build images during previews.
  ///
  /// Images built during previews are never exported to registries, however
  /// cache manifests are still exported.
  ///
  /// On-disk Dockerfiles are always validated for syntactic correctness
  /// regardless of this setting.
  ///
  /// Defaults to `true` as a safeguard against broken images merging as part
  /// of CI pipelines.
  final pulumi.Input<bool>? buildOnPreview;
  /// Builder configuration.
  final pulumi.Input<BuilderConfig>? builder;
  /// Cache export configuration.
  ///
  /// Equivalent to Docker's `--cache-from` flag.
  final pulumi.Input<List<CacheFrom>>? cacheFrom;
  /// Cache import configuration.
  ///
  /// Equivalent to Docker's `--cache-to` flag.
  final pulumi.Input<List<CacheTo>>? cacheTo;
  /// Build context settings. Defaults to the current directory.
  ///
  /// Equivalent to Docker's `PATH | URL | -` positional argument.
  final pulumi.Input<BuildContext>? context;
  /// Dockerfile settings.
  ///
  /// Equivalent to Docker's `--file` flag.
  final pulumi.Input<Dockerfile>? dockerfile;
  /// Use `exec` mode to build this image.
  ///
  /// By default the provider embeds a v25 Docker client with v0.12 buildx
  /// support. This helps ensure consistent behavior across environments and
  /// is compatible with alternative build backends (e.g. `buildkitd`), but
  /// it may not be desirable if you require a specific version of buildx.
  /// For example you may want to run a custom `docker-buildx` binary with
  /// support for [Docker Build
  /// Cloud](https://docs.docker.com/build/cloud/setup/) (DBC).
  ///
  /// When this is set to `true` the provider will instead execute the
  /// `docker-buildx` binary directly to perform its operations. The user is
  /// responsible for ensuring this binary exists, with correct permissions
  /// and pre-configured builders, at a path Docker expects (e.g.
  /// `~/.docker/cli-plugins`).
  ///
  /// Debugging `exec` mode may be more difficult as Pulumi will not be able
  /// to surface fine-grained errors and warnings. Additionally credentials
  /// are temporarily written to disk in order to provide them to the
  /// `docker-buildx` binary.
  final pulumi.Input<bool>? exec;
  /// Controls where images are persisted after building.
  ///
  /// Images are only stored in the local cache unless `exports` are
  /// explicitly configured.
  ///
  /// Exporting to multiple destinations requires a daemon running BuildKit
  /// 0.13 or later.
  ///
  /// Equivalent to Docker's `--output` flag.
  final pulumi.Input<List<Export>>? exports;
  /// Attach arbitrary key/value metadata to the image.
  ///
  /// Equivalent to Docker's `--label` flag.
  final pulumi.Input<Map<String, String>>? labels;
  /// When `true` the build will automatically include a `docker` export.
  ///
  /// Defaults to `false`.
  ///
  /// Equivalent to Docker's `--load` flag.
  final pulumi.Input<bool>? load;
  /// Set the network mode for `RUN` instructions. Defaults to `default`.
  ///
  /// For custom networks, configure your builder with `--driver-opt network=...`.
  ///
  /// Equivalent to Docker's `--network` flag.
  final pulumi.Input<NetworkMode>? network;
  /// Do not import cache manifests when building the image.
  ///
  /// Equivalent to Docker's `--no-cache` flag.
  final pulumi.Input<bool>? noCache;
  /// Set target platform(s) for the build. Defaults to the host's platform.
  ///
  /// Equivalent to Docker's `--platform` flag.
  final pulumi.Input<List<Platform>>? platforms;
  /// Always pull referenced images.
  ///
  /// Equivalent to Docker's `--pull` flag.
  final pulumi.Input<bool>? pull;
  /// When `true` the build will automatically include a `registry` export.
  ///
  /// Defaults to `false`.
  ///
  /// Equivalent to Docker's `--push` flag.
  final pulumi.Input<bool> push;
  /// Registry credentials. Required if reading or exporting to private
  /// repositories.
  ///
  /// Credentials are kept in-memory and do not pollute pre-existing
  /// credentials on the host.
  ///
  /// Similar to `docker login`.
  final pulumi.Input<List<Registry>>? registries;
  /// A mapping of secret names to their corresponding values.
  ///
  /// Unlike the Docker CLI, these can be passed by value and do not need to
  /// exist on-disk or in environment variables.
  ///
  /// Build arguments and environment variables are persistent in the final
  /// image, so you should use this for sensitive values.
  ///
  /// Similar to Docker's `--secret` flag.
  final pulumi.Input<Map<String, String>>? secrets;
  /// SSH agent socket or keys to expose to the build.
  ///
  /// Equivalent to Docker's `--ssh` flag.
  final pulumi.Input<List<SSH>>? ssh;
  /// Name and optionally a tag (format: `name:tag`).
  ///
  /// If exporting to a registry, the name should include the fully qualified
  /// registry address (e.g. `docker.io/pulumi/pulumi:latest`).
  ///
  /// Equivalent to Docker's `--tag` flag.
  final pulumi.Input<List<String>>? tags;
  /// Set the target build stage(s) to build.
  ///
  /// If not specified all targets will be built by default.
  ///
  /// Equivalent to Docker's `--target` flag.
  final pulumi.Input<String>? target;

  /// Creates a new [ImageArgs].
  /// [addHosts] Custom `host:ip` mappings to use during the build.
  /// [buildArgs] `ARG` names and values to set during the build.
  /// [buildOnPreview] Setting this to `false` will always skip image builds during previews,
  /// [builder] Builder configuration.
  /// [cacheFrom] Cache export configuration.
  /// [cacheTo] Cache import configuration.
  /// [context] Build context settings. Defaults to the current directory.
  /// [dockerfile] Dockerfile settings.
  /// [exec] Use `exec` mode to build this image.
  /// [exports] Controls where images are persisted after building.
  /// [labels] Attach arbitrary key/value metadata to the image.
  /// [load] When `true` the build will automatically include a `docker` export.
  /// [network] Set the network mode for `RUN` instructions. Defaults to `default`.
  /// [noCache] Do not import cache manifests when building the image.
  /// [platforms] Set target platform(s) for the build. Defaults to the host's platform.
  /// [pull] Always pull referenced images.
  /// [push] When `true` the build will automatically include a `registry` export.
  /// [registries] Registry credentials. Required if reading or exporting to private
  /// [secrets] A mapping of secret names to their corresponding values.
  /// [ssh] SSH agent socket or keys to expose to the build.
  /// [tags] Name and optionally a tag (format: `name:tag`).
  /// [target] Set the target build stage(s) to build.
  ImageArgs({
    this.addHosts,
    this.buildArgs,
    this.buildOnPreview,
    this.builder,
    this.cacheFrom,
    this.cacheTo,
    this.context,
    this.dockerfile,
    this.exec,
    this.exports,
    this.labels,
    this.load,
    this.network,
    this.noCache,
    this.platforms,
    this.pull,
    required this.push,
    this.registries,
    this.secrets,
    this.ssh,
    this.tags,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHosts': ?addHosts,
      'buildArgs': ?buildArgs,
      'buildOnPreview': ?buildOnPreview,
      'builder': ?pulumi.Input.mapOptionalInputValue<BuilderConfig, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'cacheFrom': ?pulumi.Input.mapOptionalInputValue<List<CacheFrom>, List<Map<String, dynamic>>>(cacheFrom, (value) => pulumi.Input.encodeList<CacheFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheTo': ?pulumi.Input.mapOptionalInputValue<List<CacheTo>, List<Map<String, dynamic>>>(cacheTo, (value) => pulumi.Input.encodeList<CacheTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'context': ?pulumi.Input.mapOptionalInputValue<BuildContext, Map<String, dynamic>>(context, (value) => value.toMap()),
      'dockerfile': ?pulumi.Input.mapOptionalInputValue<Dockerfile, Map<String, dynamic>>(dockerfile, (value) => value.toMap()),
      'exec': ?exec,
      'exports': ?pulumi.Input.mapOptionalInputValue<List<Export>, List<Map<String, dynamic>>>(exports, (value) => pulumi.Input.encodeList<Export, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'load': ?load,
      'network': ?pulumi.Input.mapOptionalInputValue<NetworkMode, String>(network, (value) => value.value),
      'noCache': ?noCache,
      'platforms': ?pulumi.Input.mapOptionalInputValue<List<Platform>, List<String>>(platforms, (value) => pulumi.Input.encodeList<Platform, String>(value, (value) => value.value)),
      'pull': ?pull,
      'push': push,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<Registry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<Registry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': ?secrets,
      'ssh': ?pulumi.Input.mapOptionalInputValue<List<SSH>, List<Map<String, dynamic>>>(ssh, (value) => pulumi.Input.encodeList<SSH, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'target': ?target,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      addHosts: map['addHosts'] == null ? null : ((map['addHosts']! as List).cast<String>()).input(),
      buildArgs: map['buildArgs'] == null ? null : ((map['buildArgs']! as Map).cast<String, String>()).input(),
      buildOnPreview: map['buildOnPreview'] == null ? null : (map['buildOnPreview']! as bool).input(),
      builder: map['builder'] == null ? null : (BuilderConfig.fromMap((map['builder']! as Map).cast<String, dynamic>())).input(),
      cacheFrom: map['cacheFrom'] == null ? null : (pulumi.Input.decodeList<CacheFrom>(map['cacheFrom']!, (value) => CacheFrom.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cacheTo: map['cacheTo'] == null ? null : (pulumi.Input.decodeList<CacheTo>(map['cacheTo']!, (value) => CacheTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      context: map['context'] == null ? null : (BuildContext.fromMap((map['context']! as Map).cast<String, dynamic>())).input(),
      dockerfile: map['dockerfile'] == null ? null : (Dockerfile.fromMap((map['dockerfile']! as Map).cast<String, dynamic>())).input(),
      exec: map['exec'] == null ? null : (map['exec']! as bool).input(),
      exports: map['exports'] == null ? null : (pulumi.Input.decodeList<Export>(map['exports']!, (value) => Export.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      load: map['load'] == null ? null : (map['load']! as bool).input(),
      network: map['network'] == null ? null : (NetworkMode.fromValue(map['network']! as String)).input(),
      noCache: map['noCache'] == null ? null : (map['noCache']! as bool).input(),
      platforms: map['platforms'] == null ? null : (pulumi.Input.decodeList<Platform>(map['platforms']!, (value) => Platform.fromValue(value as String))).input(),
      pull: map['pull'] == null ? null : (map['pull']! as bool).input(),
      push: (map['push'] as bool).input(),
      registries: map['registries'] == null ? null : (pulumi.Input.decodeList<Registry>(map['registries']!, (value) => Registry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secrets: map['secrets'] == null ? null : ((map['secrets']! as Map).cast<String, String>()).input(),
      ssh: map['ssh'] == null ? null : (pulumi.Input.decodeList<SSH>(map['ssh']!, (value) => SSH.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}


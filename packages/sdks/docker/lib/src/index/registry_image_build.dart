// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_build_auth_config.dart';
import 'registry_image_build_secret.dart';
import 'registry_image_build_ulimit.dart';

class RegistryImageBuild {
  /// A list of additional build contexts. Only supported when using a buildx builder. Example: `["name=path", "src = https://example.org"}`. Please see https://docs.docker.com/reference/cli/docker/buildx/build/#build-context for more information.
  final List<String>? additionalContexts;
  /// The configuration for the authentication
  final List<RegistryImageBuildAuthConfig>? authConfigs;
  /// Pairs for build-time variables in the form of `ENDPOINT : "https://example.com"`
  final Map<String, String>? buildArgs;
  /// BuildID is an optional identifier that can be passed together with the build request. The same identifier can be used to gracefully cancel the build with the cancel request.
  final String? buildId;
  /// Path to a file where the buildx log are written to. Only available when `builder` is set. If not set, no logs are available. The path is taken as is, so make sure to use a path that is available.
  final String? buildLogFile;
  /// Set the name of the buildx builder to use. If not set, the legacy builder is used.
  final String? builder;
  /// External cache sources (e.g., `user/app:cache`, `type=local,src=path/to/dir`). Only supported when using a buildx builder.
  final List<String>? cacheFroms;
  /// Cache export destinations (e.g., `user/app:cache`, `type=local,dest=path/to/dir`). Only supported when using a buildx builder.
  final List<String>? cacheTos;
  /// Optional parent cgroup for the container
  final String? cgroupParent;
  /// Value to specify the build context. Currently, only a `PATH` context is supported. You can use the helper function '${path.cwd}/context-dir'. This always refers to the local working directory, even when building images on remote hosts. Please see https://docs.docker.com/build/building/context/ for more information about build contexts.
  final String context;
  /// The length of a CPU period in microseconds
  final int? cpuPeriod;
  /// Microseconds of CPU time that the container can get in a CPU period
  final int? cpuQuota;
  /// CPUs in which to allow execution (e.g., `0-3`, `0`, `1`)
  final String? cpuSetCpus;
  /// MEMs in which to allow execution (`0-3`, `0`, `1`)
  final String? cpuSetMems;
  /// CPU shares (relative weight)
  final int? cpuShares;
  /// Name of the Dockerfile. Defaults to `Dockerfile`.
  final String? dockerfile;
  /// A list of hostnames/IP mappings to add to the container’s /etc/hosts file. Specified in the form ["hostname:IP"]
  final List<String>? extraHosts;
  /// Always remove intermediate containers
  final bool? forceRemove;
  /// Isolation represents the isolation technology of a container. The supported values are
  final String? isolation;
  /// Set metadata for an image
  final Map<String, String>? label;
  /// User-defined key/value metadata
  final Map<String, String>? labels;
  /// Set memory limit for build
  final int? memory;
  /// Total memory (memory + swap), -1 to enable unlimited swap
  final int? memorySwap;
  /// Set the networking mode for the RUN instructions during build
  final String? networkMode;
  /// Do not use the cache when building the image
  final bool? noCache;
  /// Set the target platform for the build. Defaults to `GOOS/GOARCH`. For more information see the [docker documentation](https://github.com/docker/buildx/blob/master/docs/reference/buildx.md#-set-the-target-platforms-for-the-build---platform)
  final String? platform;
  /// Attempt to pull the image even if an older image exists locally
  final bool? pullParent;
  /// A Git repository URI or HTTP/HTTPS context URI. Will be ignored if `builder` is set.
  final String? remoteContext;
  /// Remove intermediate containers after a successful build. Defaults to `true`.
  final bool? remove;
  /// Set build-time secrets. Only available when you use a buildx builder.
  final List<RegistryImageBuildSecret>? secrets;
  /// The security options
  final List<String>? securityOpts;
  /// Set an ID for the build session
  final String? sessionId;
  /// Size of /dev/shm in bytes. The size must be greater than 0
  final int? shmSize;
  /// If true the new layers are squashed into a new image with a single new layer
  final bool? squash;
  /// Suppress the build output and print image ID on success
  final bool? suppressOutput;
  /// Name and optionally a tag in the 'name:tag' format
  final List<String>? tags;
  /// Set the target build stage to build
  final String? target;
  /// Configuration for ulimits
  final List<RegistryImageBuildUlimit>? ulimits;
  /// Version of the underlying builder to use
  final String? version;

  /// Creates a new [RegistryImageBuild].
  /// [additionalContexts] A list of additional build contexts. Only supported when using a buildx builder. Example: `["name=path", "src = https://example.org"}`. Please see https://docs.docker.com/reference/cli/docker/buildx/build/#build-context for more information.
  /// [authConfigs] The configuration for the authentication
  /// [buildArgs] Pairs for build-time variables in the form of `ENDPOINT : "https://example.com"`
  /// [buildId] BuildID is an optional identifier that can be passed together with the build request. The same identifier can be used to gracefully cancel the build with the cancel request.
  /// [buildLogFile] Path to a file where the buildx log are written to. Only available when `builder` is set. If not set, no logs are available. The path is taken as is, so make sure to use a path that is available.
  /// [builder] Set the name of the buildx builder to use. If not set, the legacy builder is used.
  /// [cacheFroms] External cache sources (e.g., `user/app:cache`, `type=local,src=path/to/dir`). Only supported when using a buildx builder.
  /// [cacheTos] Cache export destinations (e.g., `user/app:cache`, `type=local,dest=path/to/dir`). Only supported when using a buildx builder.
  /// [cgroupParent] Optional parent cgroup for the container
  /// [context] Value to specify the build context. Currently, only a `PATH` context is supported. You can use the helper function '${path.cwd}/context-dir'. This always refers to the local working directory, even when building images on remote hosts. Please see https://docs.docker.com/build/building/context/ for more information about build contexts.
  /// [cpuPeriod] The length of a CPU period in microseconds
  /// [cpuQuota] Microseconds of CPU time that the container can get in a CPU period
  /// [cpuSetCpus] CPUs in which to allow execution (e.g., `0-3`, `0`, `1`)
  /// [cpuSetMems] MEMs in which to allow execution (`0-3`, `0`, `1`)
  /// [cpuShares] CPU shares (relative weight)
  /// [dockerfile] Name of the Dockerfile. Defaults to `Dockerfile`.
  /// [extraHosts] A list of hostnames/IP mappings to add to the container’s /etc/hosts file. Specified in the form ["hostname:IP"]
  /// [forceRemove] Always remove intermediate containers
  /// [isolation] Isolation represents the isolation technology of a container. The supported values are
  /// [label] Set metadata for an image
  /// [labels] User-defined key/value metadata
  /// [memory] Set memory limit for build
  /// [memorySwap] Total memory (memory + swap), -1 to enable unlimited swap
  /// [networkMode] Set the networking mode for the RUN instructions during build
  /// [noCache] Do not use the cache when building the image
  /// [platform] Set the target platform for the build. Defaults to `GOOS/GOARCH`. For more information see the [docker documentation](https://github.com/docker/buildx/blob/master/docs/reference/buildx.md#-set-the-target-platforms-for-the-build---platform)
  /// [pullParent] Attempt to pull the image even if an older image exists locally
  /// [remoteContext] A Git repository URI or HTTP/HTTPS context URI. Will be ignored if `builder` is set.
  /// [remove] Remove intermediate containers after a successful build. Defaults to `true`.
  /// [secrets] Set build-time secrets. Only available when you use a buildx builder.
  /// [securityOpts] The security options
  /// [sessionId] Set an ID for the build session
  /// [shmSize] Size of /dev/shm in bytes. The size must be greater than 0
  /// [squash] If true the new layers are squashed into a new image with a single new layer
  /// [suppressOutput] Suppress the build output and print image ID on success
  /// [tags] Name and optionally a tag in the 'name:tag' format
  /// [target] Set the target build stage to build
  /// [ulimits] Configuration for ulimits
  /// [version] Version of the underlying builder to use
  RegistryImageBuild({
    this.additionalContexts,
    this.authConfigs,
    this.buildArgs,
    this.buildId,
    this.buildLogFile,
    this.builder,
    this.cacheFroms,
    this.cacheTos,
    this.cgroupParent,
    required this.context,
    this.cpuPeriod,
    this.cpuQuota,
    this.cpuSetCpus,
    this.cpuSetMems,
    this.cpuShares,
    this.dockerfile,
    this.extraHosts,
    this.forceRemove,
    this.isolation,
    this.label,
    this.labels,
    this.memory,
    this.memorySwap,
    this.networkMode,
    this.noCache,
    this.platform,
    this.pullParent,
    this.remoteContext,
    this.remove,
    this.secrets,
    this.securityOpts,
    this.sessionId,
    this.shmSize,
    this.squash,
    this.suppressOutput,
    this.tags,
    this.target,
    this.ulimits,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContexts': ?additionalContexts,
      'authConfigs': ?authConfigs == null ? null : pulumi.Input.encodeList<RegistryImageBuildAuthConfig, Map<String, dynamic>>(authConfigs!, (value) => value.toMap()),
      'buildArgs': ?buildArgs,
      'buildId': ?buildId,
      'buildLogFile': ?buildLogFile,
      'builder': ?builder,
      'cacheFroms': ?cacheFroms,
      'cacheTos': ?cacheTos,
      'cgroupParent': ?cgroupParent,
      'context': context,
      'cpuPeriod': ?cpuPeriod,
      'cpuQuota': ?cpuQuota,
      'cpuSetCpus': ?cpuSetCpus,
      'cpuSetMems': ?cpuSetMems,
      'cpuShares': ?cpuShares,
      'dockerfile': ?dockerfile,
      'extraHosts': ?extraHosts,
      'forceRemove': ?forceRemove,
      'isolation': ?isolation,
      'label': ?label,
      'labels': ?labels,
      'memory': ?memory,
      'memorySwap': ?memorySwap,
      'networkMode': ?networkMode,
      'noCache': ?noCache,
      'platform': ?platform,
      'pullParent': ?pullParent,
      'remoteContext': ?remoteContext,
      'remove': ?remove,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<RegistryImageBuildSecret, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'securityOpts': ?securityOpts,
      'sessionId': ?sessionId,
      'shmSize': ?shmSize,
      'squash': ?squash,
      'suppressOutput': ?suppressOutput,
      'tags': ?tags,
      'target': ?target,
      'ulimits': ?ulimits == null ? null : pulumi.Input.encodeList<RegistryImageBuildUlimit, Map<String, dynamic>>(ulimits!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory RegistryImageBuild.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuild(
      additionalContexts: map['additionalContexts'] == null ? null : (map['additionalContexts'] as List).cast<String>(),
      authConfigs: map['authConfigs'] == null ? null : pulumi.Input.decodeList<RegistryImageBuildAuthConfig>(map['authConfigs'], (value) => RegistryImageBuildAuthConfig.fromMap((value as Map).cast<String, dynamic>())),
      buildArgs: map['buildArgs'] == null ? null : (map['buildArgs'] as Map).cast<String, String>(),
      buildId: map['buildId'] == null ? null : map['buildId'] as String,
      buildLogFile: map['buildLogFile'] == null ? null : map['buildLogFile'] as String,
      builder: map['builder'] == null ? null : map['builder'] as String,
      cacheFroms: map['cacheFroms'] == null ? null : (map['cacheFroms'] as List).cast<String>(),
      cacheTos: map['cacheTos'] == null ? null : (map['cacheTos'] as List).cast<String>(),
      cgroupParent: map['cgroupParent'] == null ? null : map['cgroupParent'] as String,
      context: map['context'] as String,
      cpuPeriod: map['cpuPeriod'] == null ? null : map['cpuPeriod'] as int,
      cpuQuota: map['cpuQuota'] == null ? null : map['cpuQuota'] as int,
      cpuSetCpus: map['cpuSetCpus'] == null ? null : map['cpuSetCpus'] as String,
      cpuSetMems: map['cpuSetMems'] == null ? null : map['cpuSetMems'] as String,
      cpuShares: map['cpuShares'] == null ? null : map['cpuShares'] as int,
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      extraHosts: map['extraHosts'] == null ? null : (map['extraHosts'] as List).cast<String>(),
      forceRemove: map['forceRemove'] == null ? null : map['forceRemove'] as bool,
      isolation: map['isolation'] == null ? null : map['isolation'] as String,
      label: map['label'] == null ? null : (map['label'] as Map).cast<String, String>(),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      memory: map['memory'] == null ? null : map['memory'] as int,
      memorySwap: map['memorySwap'] == null ? null : map['memorySwap'] as int,
      networkMode: map['networkMode'] == null ? null : map['networkMode'] as String,
      noCache: map['noCache'] == null ? null : map['noCache'] as bool,
      platform: map['platform'] == null ? null : map['platform'] as String,
      pullParent: map['pullParent'] == null ? null : map['pullParent'] as bool,
      remoteContext: map['remoteContext'] == null ? null : map['remoteContext'] as String,
      remove: map['remove'] == null ? null : map['remove'] as bool,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<RegistryImageBuildSecret>(map['secrets'], (value) => RegistryImageBuildSecret.fromMap((value as Map).cast<String, dynamic>())),
      securityOpts: map['securityOpts'] == null ? null : (map['securityOpts'] as List).cast<String>(),
      sessionId: map['sessionId'] == null ? null : map['sessionId'] as String,
      shmSize: map['shmSize'] == null ? null : map['shmSize'] as int,
      squash: map['squash'] == null ? null : map['squash'] as bool,
      suppressOutput: map['suppressOutput'] == null ? null : map['suppressOutput'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      target: map['target'] == null ? null : map['target'] as String,
      ulimits: map['ulimits'] == null ? null : pulumi.Input.decodeList<RegistryImageBuildUlimit>(map['ulimits'], (value) => RegistryImageBuildUlimit.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}


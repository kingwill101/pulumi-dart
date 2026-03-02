// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_image_build_auth_config.dart';
import 'remote_image_build_secret.dart';
import 'remote_image_build_ulimit.dart';

class RemoteImageBuild {
  /// A list of additional build contexts. Only supported when using a buildx builder. Example: `["name=path", "src = https://example.org"}`. Please see https://docs.docker.com/reference/cli/docker/buildx/build/#build-context for more information.
  final pulumi.Input<List<String>>? additionalContexts;
  /// The configuration for the authentication
  final pulumi.Input<List<RemoteImageBuildAuthConfig>>? authConfigs;
  /// Pairs for build-time variables in the form of `ENDPOINT : "https://example.com"`
  final pulumi.Input<Map<String, String>>? buildArgs;
  /// BuildID is an optional identifier that can be passed together with the build request. The same identifier can be used to gracefully cancel the build with the cancel request.
  final pulumi.Input<String>? buildId;
  /// Path to a file where the buildx log are written to. Only available when `builder` is set. If not set, no logs are available. The path is taken as is, so make sure to use a path that is available.
  final pulumi.Input<String>? buildLogFile;
  /// Set the name of the buildx builder to use. If not set, the legacy builder is used.
  final pulumi.Input<String>? builder;
  /// External cache sources (e.g., `user/app:cache`, `type=local,src=path/to/dir`). Only supported when using a buildx builder.
  final pulumi.Input<List<String>>? cacheFroms;
  /// Cache export destinations (e.g., `user/app:cache`, `type=local,dest=path/to/dir`). Only supported when using a buildx builder.
  final pulumi.Input<List<String>>? cacheTos;
  /// Optional parent cgroup for the container
  final pulumi.Input<String>? cgroupParent;
  /// Value to specify the build context. Currently, only a `PATH` context is supported. You can use the helper function '${path.cwd}/context-dir'. This always refers to the local working directory, even when building images on remote hosts. Please see https://docs.docker.com/build/building/context/ for more information about build contexts.
  final pulumi.Input<String> context;
  /// The length of a CPU period in microseconds
  final pulumi.Input<int>? cpuPeriod;
  /// Microseconds of CPU time that the container can get in a CPU period
  final pulumi.Input<int>? cpuQuota;
  /// CPUs in which to allow execution (e.g., `0-3`, `0`, `1`)
  final pulumi.Input<String>? cpuSetCpus;
  /// MEMs in which to allow execution (`0-3`, `0`, `1`)
  final pulumi.Input<String>? cpuSetMems;
  /// CPU shares (relative weight)
  final pulumi.Input<int>? cpuShares;
  /// Name of the Dockerfile. Defaults to `Dockerfile`.
  final pulumi.Input<String>? dockerfile;
  /// A list of hostnames/IP mappings to add to the container’s /etc/hosts file. Specified in the form ["hostname:IP"]
  final pulumi.Input<List<String>>? extraHosts;
  /// Always remove intermediate containers
  final pulumi.Input<bool>? forceRemove;
  /// Isolation represents the isolation technology of a container. The supported values are
  final pulumi.Input<String>? isolation;
  /// Set metadata for an image
  final pulumi.Input<Map<String, String>>? label;
  /// User-defined key/value metadata
  final pulumi.Input<Map<String, String>>? labels;
  /// Set memory limit for build
  final pulumi.Input<int>? memory;
  /// Total memory (memory + swap), -1 to enable unlimited swap
  final pulumi.Input<int>? memorySwap;
  /// Set the networking mode for the RUN instructions during build
  final pulumi.Input<String>? networkMode;
  /// Do not use the cache when building the image
  final pulumi.Input<bool>? noCache;
  /// Set the target platform for the build. Defaults to `GOOS/GOARCH`. For more information see the [docker documentation](https://github.com/docker/buildx/blob/master/docs/reference/buildx.md#-set-the-target-platforms-for-the-build---platform)
  final pulumi.Input<String>? platform;
  /// Attempt to pull the image even if an older image exists locally
  final pulumi.Input<bool>? pullParent;
  /// A Git repository URI or HTTP/HTTPS context URI. Will be ignored if `builder` is set.
  final pulumi.Input<String>? remoteContext;
  /// Remove intermediate containers after a successful build. Defaults to `true`.
  final pulumi.Input<bool>? remove;
  /// Set build-time secrets. Only available when you use a buildx builder.
  final pulumi.Input<List<RemoteImageBuildSecret>>? secrets;
  /// The security options
  final pulumi.Input<List<String>>? securityOpts;
  /// Set an ID for the build session
  final pulumi.Input<String>? sessionId;
  /// Size of /dev/shm in bytes. The size must be greater than 0
  final pulumi.Input<int>? shmSize;
  /// If true the new layers are squashed into a new image with a single new layer
  final pulumi.Input<bool>? squash;
  /// Suppress the build output and print image ID on success
  final pulumi.Input<bool>? suppressOutput;
  /// Name and optionally a tag in the 'name:tag' format
  final pulumi.Input<List<String>>? tags;
  /// Set the target build stage to build
  final pulumi.Input<String>? target;
  /// Configuration for ulimits
  final pulumi.Input<List<RemoteImageBuildUlimit>>? ulimits;
  /// Version of the underlying builder to use
  final pulumi.Input<String>? version;

  /// Creates a new [RemoteImageBuild].
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
  RemoteImageBuild({
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
      'authConfigs': ?pulumi.Input.mapOptionalInputValue<List<RemoteImageBuildAuthConfig>, List<Map<String, dynamic>>>(authConfigs, (value) => pulumi.Input.encodeList<RemoteImageBuildAuthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<RemoteImageBuildSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<RemoteImageBuildSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityOpts': ?securityOpts,
      'sessionId': ?sessionId,
      'shmSize': ?shmSize,
      'squash': ?squash,
      'suppressOutput': ?suppressOutput,
      'tags': ?tags,
      'target': ?target,
      'ulimits': ?pulumi.Input.mapOptionalInputValue<List<RemoteImageBuildUlimit>, List<Map<String, dynamic>>>(ulimits, (value) => pulumi.Input.encodeList<RemoteImageBuildUlimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory RemoteImageBuild.fromMap(Map<String, dynamic> map) {
    return RemoteImageBuild(
      additionalContexts: map['additionalContexts'] == null ? null : ((map['additionalContexts'] as List).cast<String>()).input(),
      authConfigs: map['authConfigs'] == null ? null : (pulumi.Input.decodeList<RemoteImageBuildAuthConfig>(map['authConfigs'], (value) => RemoteImageBuildAuthConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      buildArgs: map['buildArgs'] == null ? null : ((map['buildArgs'] as Map).cast<String, String>()).input(),
      buildId: map['buildId'] == null ? null : (map['buildId'] as String).input(),
      buildLogFile: map['buildLogFile'] == null ? null : (map['buildLogFile'] as String).input(),
      builder: map['builder'] == null ? null : (map['builder'] as String).input(),
      cacheFroms: map['cacheFroms'] == null ? null : ((map['cacheFroms'] as List).cast<String>()).input(),
      cacheTos: map['cacheTos'] == null ? null : ((map['cacheTos'] as List).cast<String>()).input(),
      cgroupParent: map['cgroupParent'] == null ? null : (map['cgroupParent'] as String).input(),
      context: (map['context'] as String).input(),
      cpuPeriod: map['cpuPeriod'] == null ? null : (map['cpuPeriod'] as int).input(),
      cpuQuota: map['cpuQuota'] == null ? null : (map['cpuQuota'] as int).input(),
      cpuSetCpus: map['cpuSetCpus'] == null ? null : (map['cpuSetCpus'] as String).input(),
      cpuSetMems: map['cpuSetMems'] == null ? null : (map['cpuSetMems'] as String).input(),
      cpuShares: map['cpuShares'] == null ? null : (map['cpuShares'] as int).input(),
      dockerfile: map['dockerfile'] == null ? null : (map['dockerfile'] as String).input(),
      extraHosts: map['extraHosts'] == null ? null : ((map['extraHosts'] as List).cast<String>()).input(),
      forceRemove: map['forceRemove'] == null ? null : (map['forceRemove'] as bool).input(),
      isolation: map['isolation'] == null ? null : (map['isolation'] as String).input(),
      label: map['label'] == null ? null : ((map['label'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      memorySwap: map['memorySwap'] == null ? null : (map['memorySwap'] as int).input(),
      networkMode: map['networkMode'] == null ? null : (map['networkMode'] as String).input(),
      noCache: map['noCache'] == null ? null : (map['noCache'] as bool).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      pullParent: map['pullParent'] == null ? null : (map['pullParent'] as bool).input(),
      remoteContext: map['remoteContext'] == null ? null : (map['remoteContext'] as String).input(),
      remove: map['remove'] == null ? null : (map['remove'] as bool).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<RemoteImageBuildSecret>(map['secrets'], (value) => RemoteImageBuildSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityOpts: map['securityOpts'] == null ? null : ((map['securityOpts'] as List).cast<String>()).input(),
      sessionId: map['sessionId'] == null ? null : (map['sessionId'] as String).input(),
      shmSize: map['shmSize'] == null ? null : (map['shmSize'] as int).input(),
      squash: map['squash'] == null ? null : (map['squash'] as bool).input(),
      suppressOutput: map['suppressOutput'] == null ? null : (map['suppressOutput'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      ulimits: map['ulimits'] == null ? null : (pulumi.Input.decodeList<RemoteImageBuildUlimit>(map['ulimits'], (value) => RemoteImageBuildUlimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}


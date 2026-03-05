// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_build_auth_config.dart';
import 'registry_image_build_secret.dart';
import 'registry_image_build_ulimit.dart';

class RegistryImageBuild {
  /// A list of additional build contexts. Only supported when using a buildx builder. Example: `["name=path", "src = https://example.org"}`. Please see https://docs.docker.com/reference/cli/docker/buildx/build/#build-context for more information.
  final pulumi.Input<List<String>>? additionalContexts;
  /// The configuration for the authentication
  final pulumi.Input<List<RegistryImageBuildAuthConfig>>? authConfigs;
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
  final pulumi.Input<List<RegistryImageBuildSecret>>? secrets;
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
  final pulumi.Input<List<RegistryImageBuildUlimit>>? ulimits;
  /// Version of the underlying builder to use
  final pulumi.Input<String>? version;

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
      'authConfigs': ?pulumi.Input.mapOptionalInputValue<List<RegistryImageBuildAuthConfig>, List<Map<String, dynamic>>>(authConfigs, (value) => pulumi.Input.encodeList<RegistryImageBuildAuthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<RegistryImageBuildSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<RegistryImageBuildSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityOpts': ?securityOpts,
      'sessionId': ?sessionId,
      'shmSize': ?shmSize,
      'squash': ?squash,
      'suppressOutput': ?suppressOutput,
      'tags': ?tags,
      'target': ?target,
      'ulimits': ?pulumi.Input.mapOptionalInputValue<List<RegistryImageBuildUlimit>, List<Map<String, dynamic>>>(ulimits, (value) => pulumi.Input.encodeList<RegistryImageBuildUlimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory RegistryImageBuild.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuild(
      additionalContexts: (() { final guardedValue = map['additionalContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authConfigs: (() { final guardedValue = map['authConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryImageBuildAuthConfig>(guardedValue, (value) => RegistryImageBuildAuthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      buildArgs: (() { final guardedValue = map['buildArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      buildId: (() { final guardedValue = map['buildId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildLogFile: (() { final guardedValue = map['buildLogFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builder: (() { final guardedValue = map['builder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheFroms: (() { final guardedValue = map['cacheFroms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheTos: (() { final guardedValue = map['cacheTos']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cgroupParent: (() { final guardedValue = map['cgroupParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      context: pulumi.Input.fromValue(map['context'] as String),
      cpuPeriod: (() { final guardedValue = map['cpuPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuQuota: (() { final guardedValue = map['cpuQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuSetCpus: (() { final guardedValue = map['cpuSetCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuSetMems: (() { final guardedValue = map['cpuSetMems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuShares: (() { final guardedValue = map['cpuShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dockerfile: (() { final guardedValue = map['dockerfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraHosts: (() { final guardedValue = map['extraHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      forceRemove: (() { final guardedValue = map['forceRemove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isolation: (() { final guardedValue = map['isolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memorySwap: (() { final guardedValue = map['memorySwap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noCache: (() { final guardedValue = map['noCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullParent: (() { final guardedValue = map['pullParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteContext: (() { final guardedValue = map['remoteContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remove: (() { final guardedValue = map['remove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryImageBuildSecret>(guardedValue, (value) => RegistryImageBuildSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityOpts: (() { final guardedValue = map['securityOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sessionId: (() { final guardedValue = map['sessionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shmSize: (() { final guardedValue = map['shmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      squash: (() { final guardedValue = map['squash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      suppressOutput: (() { final guardedValue = map['suppressOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ulimits: (() { final guardedValue = map['ulimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryImageBuildUlimit>(guardedValue, (value) => RegistryImageBuildUlimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


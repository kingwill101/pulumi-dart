// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_capabilities.dart';
import 'container_device.dart';
import 'container_healthcheck.dart';
import 'container_host.dart';
import 'container_label.dart';
import 'container_mount.dart';
import 'container_network_data.dart';
import 'container_networks_advanced.dart';
import 'container_port.dart';
import 'container_ulimit.dart';
import 'container_upload.dart';
import 'container_volume.dart';

/// Input properties used for looking up and filtering Container resources.
class ContainerState {
  /// If `true` attach to the container after its creation and waits the end of its execution. Defaults to `false`.
  final pulumi.Input<bool>? attach;
  /// The network bridge of the container as read from its NetworkSettings.
  final pulumi.Input<String>? bridge;
  /// Add or drop certrain linux capabilities.
  final pulumi.Input<ContainerCapabilities>? capabilities;
  /// Optional parent cgroup for the container
  final pulumi.Input<String>? cgroupParent;
  /// Cgroup namespace mode to use for the container. Possible values are: `private`, `host`.
  final pulumi.Input<String>? cgroupnsMode;
  /// The command to use to start the container. For example, to run `/usr/bin/myprogram -f baz.conf` set the command to be `["/usr/bin/myprogram","-f","baz.conf"]`.
  final pulumi.Input<List<String>>? command;
  /// The logs of the container if its execution is done (`attach` must be disabled).
  final pulumi.Input<String>? containerLogs;
  /// The total number of milliseconds to wait for the container to reach status 'running'
  final pulumi.Input<int>? containerReadRefreshTimeoutMilliseconds;
  /// Specify the CPU CFS scheduler period (in microseconds), which is used alongside `cpu-quota`. Is ignored if `cpus` is set.
  final pulumi.Input<int>? cpuPeriod;
  /// Impose a CPU CFS quota on the container (in microseconds). The number of microseconds per `cpu-period` that the container is limited to before throttled. Is ignored if `cpus` is set.
  final pulumi.Input<int>? cpuQuota;
  /// A comma-separated list or hyphen-separated range of CPUs a container can use, e.g. `0-1`.
  final pulumi.Input<String>? cpuSet;
  /// CPU shares (relative weight) for the container.
  final pulumi.Input<int>? cpuShares;
  /// Specify how much of the available CPU resources a container can use. e.g a value of 1.5 means the container is guaranteed at most one and a half of the CPUs. Has precedence over `cpu_period` and `cpu_quota`.
  final pulumi.Input<String>? cpus;
  /// If defined will attempt to stop the container before destroying. Container will be destroyed after `n` seconds or on successful stop.
  final pulumi.Input<int>? destroyGraceSeconds;
  /// Bind devices to the container.
  final pulumi.Input<List<ContainerDevice>>? devices;
  /// DNS servers to use.
  final pulumi.Input<List<String>>? dns;
  /// DNS options used by the DNS provider(s), see `resolv.conf` documentation for valid list of options.
  final pulumi.Input<List<String>>? dnsOpts;
  /// DNS search domains that are used when bare unqualified hostnames are used inside of the container.
  final pulumi.Input<List<String>>? dnsSearches;
  /// Domain name of the container.
  final pulumi.Input<String>? domainname;
  /// The command to use as the Entrypoint for the container. The Entrypoint allows you to configure a container to run as an executable. For example, to run `/usr/bin/myprogram` when starting a container, set the entrypoint to be `"/usr/bin/myprogram"]`.
  final pulumi.Input<List<String>>? entrypoints;
  /// Environment variables to set in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  final pulumi.Input<List<String>>? envs;
  /// The exit code of the container if its execution is done (`must_run` must be disabled).
  final pulumi.Input<int>? exitCode;
  /// GPU devices to add to the container. Currently, only the value `all` is supported. Passing any other value will result in unexpected behavior.
  final pulumi.Input<String>? gpus;
  /// Additional groups for the container user
  final pulumi.Input<List<String>>? groupAdds;
  /// A test to perform to check that the container is healthy
  final pulumi.Input<ContainerHealthcheck>? healthcheck;
  /// Hostname of the container.
  final pulumi.Input<String>? hostname;
  /// Additional hosts to add to the container.
  final pulumi.Input<List<ContainerHost>>? hosts;
  /// The ID of the image to back this container. The easiest way to get this value is to use the `image_id` attribute of the `docker.RemoteImage` resource as is shown in the example.
  final pulumi.Input<String>? image;
  /// Configured whether an init process should be injected for this container. If unset this will default to the `dockerd` defaults.
  final pulumi.Input<bool>? init;
  /// IPC sharing mode for the container. Possible values are: `none`, `private`, `shareable`, `container:<name|id>` or `host`.
  final pulumi.Input<String>? ipcMode;
  /// User-defined key/value metadata
  final pulumi.Input<List<ContainerLabel>>? labels;
  /// The logging driver to use for the container.
  final pulumi.Input<String>? logDriver;
  /// Key/value pairs to use as options for the logging driver.
  final pulumi.Input<Map<String, String>>? logOpts;
  /// Save the container logs (`attach` must be enabled). Defaults to `false`.
  final pulumi.Input<bool>? logs;
  /// The maximum amount of times to an attempt a restart when `restart` is set to 'on-failure'.
  final pulumi.Input<int>? maxRetryCount;
  /// The memory limit for the container in MBs.
  final pulumi.Input<int>? memory;
  /// The memory-resveration for the container in MBs. Defaults to 0. Allows you to specify a soft limit smaller than `memory` which is activated when Docker detects contention or low memory on the host machine. If you use `memory-reservation`, it must be set lower than `memory` for it to take precedence. Because it is a soft limit, it doesn't guarantee that the container doesn't exceed the limit.
  final pulumi.Input<int>? memoryReservation;
  /// The total memory limit (memory + swap) for the container in MBs. This setting may compute to `-1` after `pulumi up` if the target host doesn't support memory swap, when that is the case docker will use a soft limitation.
  final pulumi.Input<int>? memorySwap;
  /// Specification for mounts to be added to containers created as part of the service.
  final pulumi.Input<List<ContainerMount>>? mounts;
  final pulumi.Input<bool>? mustRun;
  /// The name of the container.
  final pulumi.Input<String>? name;
  /// The data of the networks the container is connected to.
  final pulumi.Input<List<ContainerNetworkData>>? networkDatas;
  /// Network mode of the container. Defaults to `bridge`. If your host OS is any other OS, you need to set this value explicitly, e.g. `nat` when your container will be running on an Windows host. See https://docs.docker.com/engine/network/ for more information.
  final pulumi.Input<String>? networkMode;
  /// The networks the container is attached to
  final pulumi.Input<List<ContainerNetworksAdvanced>>? networksAdvanced;
  /// he PID (Process) Namespace mode for the container. Either `container:<name|id>` or `host`.
  final pulumi.Input<String>? pidMode;
  /// Publish a container's port(s) to the host.
  final pulumi.Input<List<ContainerPort>>? ports;
  /// If `true`, the container runs in privileged mode.
  final pulumi.Input<bool>? privileged;
  /// Publish all ports of the container.
  final pulumi.Input<bool>? publishAllPorts;
  /// If `true`, the container will be started as readonly. Defaults to `false`.
  final pulumi.Input<bool>? readOnly;
  /// If `true`, it will remove anonymous volumes associated with the container. Defaults to `true`.
  final pulumi.Input<bool>? removeVolumes;
  /// The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to `no`.
  final pulumi.Input<String>? restart;
  /// If `true`, then the container will be automatically removed when it exits. Defaults to `false`.
  final pulumi.Input<bool>? rm;
  /// Runtime to use for the container.
  final pulumi.Input<String>? runtime;
  /// List of string values to customize labels for MLS systems, such as SELinux. See https://docs.docker.com/engine/reference/run/#security-configuration.
  final pulumi.Input<List<String>>? securityOpts;
  /// Size of `/dev/shm` in MBs.
  final pulumi.Input<int>? shmSize;
  /// If `true`, then the Docker container will be started after creation. If `false`, then the container is only created. Defaults to `true`.
  final pulumi.Input<bool>? start;
  /// If `true`, keep STDIN open even if not attached (`docker run -i`). Defaults to `false`.
  final pulumi.Input<bool>? stdinOpen;
  /// Signal to stop a container (default `SIGTERM`).
  final pulumi.Input<String>? stopSignal;
  /// Timeout (in seconds) to stop a container.
  final pulumi.Input<int>? stopTimeout;
  /// Key/value pairs for the storage driver options, e.g. `size`: `120G`
  final pulumi.Input<Map<String, String>>? storageOpts;
  /// A map of kernel parameters (sysctls) to set in the container.
  final pulumi.Input<Map<String, String>>? sysctls;
  /// A map of container directories which should be replaced by `tmpfs mounts`, and their corresponding mount options.
  final pulumi.Input<Map<String, String>>? tmpfs;
  /// If `true`, allocate a pseudo-tty (`docker run -t`). Defaults to `false`.
  final pulumi.Input<bool>? tty;
  /// Ulimit options to add.
  final pulumi.Input<List<ContainerUlimit>>? ulimits;
  /// Specifies files to upload to the container before starting it. Only one of `content` or `content_base64` can be set and at least one of them has to be set.
  final pulumi.Input<List<ContainerUpload>>? uploads;
  /// User used for run the first process. Format is `user` or `user:group` which user and group can be passed literraly or by name.
  final pulumi.Input<String>? user;
  /// Sets the usernamespace mode for the container when usernamespace remapping option is enabled.
  final pulumi.Input<String>? usernsMode;
  /// Spec for mounting volumes in the container.
  final pulumi.Input<List<ContainerVolume>>? volumes;
  /// If `true`, then the Docker container is waited for being healthy state after creation. This requires your container to have a healthcheck, otherwise this provider will error. If `false`, then the container health state is not checked. Defaults to `false`.
  final pulumi.Input<bool>? wait;
  /// The timeout in seconds to wait the container to be healthy after creation. Defaults to `60`.
  final pulumi.Input<int>? waitTimeout;
  /// The working directory for commands to run in.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [ContainerState].
  /// [attach] If `true` attach to the container after its creation and waits the end of its execution. Defaults to `false`.
  /// [bridge] The network bridge of the container as read from its NetworkSettings.
  /// [capabilities] Add or drop certrain linux capabilities.
  /// [cgroupParent] Optional parent cgroup for the container
  /// [cgroupnsMode] Cgroup namespace mode to use for the container. Possible values are: `private`, `host`.
  /// [command] The command to use to start the container. For example, to run `/usr/bin/myprogram -f baz.conf` set the command to be `["/usr/bin/myprogram","-f","baz.conf"]`.
  /// [containerLogs] The logs of the container if its execution is done (`attach` must be disabled).
  /// [containerReadRefreshTimeoutMilliseconds] The total number of milliseconds to wait for the container to reach status 'running'
  /// [cpuPeriod] Specify the CPU CFS scheduler period (in microseconds), which is used alongside `cpu-quota`. Is ignored if `cpus` is set.
  /// [cpuQuota] Impose a CPU CFS quota on the container (in microseconds). The number of microseconds per `cpu-period` that the container is limited to before throttled. Is ignored if `cpus` is set.
  /// [cpuSet] A comma-separated list or hyphen-separated range of CPUs a container can use, e.g. `0-1`.
  /// [cpuShares] CPU shares (relative weight) for the container.
  /// [cpus] Specify how much of the available CPU resources a container can use. e.g a value of 1.5 means the container is guaranteed at most one and a half of the CPUs. Has precedence over `cpu_period` and `cpu_quota`.
  /// [destroyGraceSeconds] If defined will attempt to stop the container before destroying. Container will be destroyed after `n` seconds or on successful stop.
  /// [devices] Bind devices to the container.
  /// [dns] DNS servers to use.
  /// [dnsOpts] DNS options used by the DNS provider(s), see `resolv.conf` documentation for valid list of options.
  /// [dnsSearches] DNS search domains that are used when bare unqualified hostnames are used inside of the container.
  /// [domainname] Domain name of the container.
  /// [entrypoints] The command to use as the Entrypoint for the container. The Entrypoint allows you to configure a container to run as an executable. For example, to run `/usr/bin/myprogram` when starting a container, set the entrypoint to be `"/usr/bin/myprogram"]`.
  /// [envs] Environment variables to set in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  /// [exitCode] The exit code of the container if its execution is done (`must_run` must be disabled).
  /// [gpus] GPU devices to add to the container. Currently, only the value `all` is supported. Passing any other value will result in unexpected behavior.
  /// [groupAdds] Additional groups for the container user
  /// [healthcheck] A test to perform to check that the container is healthy
  /// [hostname] Hostname of the container.
  /// [hosts] Additional hosts to add to the container.
  /// [image] The ID of the image to back this container. The easiest way to get this value is to use the `image_id` attribute of the `docker.RemoteImage` resource as is shown in the example.
  /// [init] Configured whether an init process should be injected for this container. If unset this will default to the `dockerd` defaults.
  /// [ipcMode] IPC sharing mode for the container. Possible values are: `none`, `private`, `shareable`, `container:<name|id>` or `host`.
  /// [labels] User-defined key/value metadata
  /// [logDriver] The logging driver to use for the container.
  /// [logOpts] Key/value pairs to use as options for the logging driver.
  /// [logs] Save the container logs (`attach` must be enabled). Defaults to `false`.
  /// [maxRetryCount] The maximum amount of times to an attempt a restart when `restart` is set to 'on-failure'.
  /// [memory] The memory limit for the container in MBs.
  /// [memoryReservation] The memory-resveration for the container in MBs. Defaults to 0. Allows you to specify a soft limit smaller than `memory` which is activated when Docker detects contention or low memory on the host machine. If you use `memory-reservation`, it must be set lower than `memory` for it to take precedence. Because it is a soft limit, it doesn't guarantee that the container doesn't exceed the limit.
  /// [memorySwap] The total memory limit (memory + swap) for the container in MBs. This setting may compute to `-1` after `pulumi up` if the target host doesn't support memory swap, when that is the case docker will use a soft limitation.
  /// [mounts] Specification for mounts to be added to containers created as part of the service.
  /// [mustRun] Optional.
  /// [name] The name of the container.
  /// [networkDatas] The data of the networks the container is connected to.
  /// [networkMode] Network mode of the container. Defaults to `bridge`. If your host OS is any other OS, you need to set this value explicitly, e.g. `nat` when your container will be running on an Windows host. See https://docs.docker.com/engine/network/ for more information.
  /// [networksAdvanced] The networks the container is attached to
  /// [pidMode] he PID (Process) Namespace mode for the container. Either `container:<name|id>` or `host`.
  /// [ports] Publish a container's port(s) to the host.
  /// [privileged] If `true`, the container runs in privileged mode.
  /// [publishAllPorts] Publish all ports of the container.
  /// [readOnly] If `true`, the container will be started as readonly. Defaults to `false`.
  /// [removeVolumes] If `true`, it will remove anonymous volumes associated with the container. Defaults to `true`.
  /// [restart] The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to `no`.
  /// [rm] If `true`, then the container will be automatically removed when it exits. Defaults to `false`.
  /// [runtime] Runtime to use for the container.
  /// [securityOpts] List of string values to customize labels for MLS systems, such as SELinux. See https://docs.docker.com/engine/reference/run/#security-configuration.
  /// [shmSize] Size of `/dev/shm` in MBs.
  /// [start] If `true`, then the Docker container will be started after creation. If `false`, then the container is only created. Defaults to `true`.
  /// [stdinOpen] If `true`, keep STDIN open even if not attached (`docker run -i`). Defaults to `false`.
  /// [stopSignal] Signal to stop a container (default `SIGTERM`).
  /// [stopTimeout] Timeout (in seconds) to stop a container.
  /// [storageOpts] Key/value pairs for the storage driver options, e.g. `size`: `120G`
  /// [sysctls] A map of kernel parameters (sysctls) to set in the container.
  /// [tmpfs] A map of container directories which should be replaced by `tmpfs mounts`, and their corresponding mount options.
  /// [tty] If `true`, allocate a pseudo-tty (`docker run -t`). Defaults to `false`.
  /// [ulimits] Ulimit options to add.
  /// [uploads] Specifies files to upload to the container before starting it. Only one of `content` or `content_base64` can be set and at least one of them has to be set.
  /// [user] User used for run the first process. Format is `user` or `user:group` which user and group can be passed literraly or by name.
  /// [usernsMode] Sets the usernamespace mode for the container when usernamespace remapping option is enabled.
  /// [volumes] Spec for mounting volumes in the container.
  /// [wait] If `true`, then the Docker container is waited for being healthy state after creation. This requires your container to have a healthcheck, otherwise this provider will error. If `false`, then the container health state is not checked. Defaults to `false`.
  /// [waitTimeout] The timeout in seconds to wait the container to be healthy after creation. Defaults to `60`.
  /// [workingDir] The working directory for commands to run in.
  ContainerState({
    this.attach,
    this.bridge,
    this.capabilities,
    this.cgroupParent,
    this.cgroupnsMode,
    this.command,
    this.containerLogs,
    this.containerReadRefreshTimeoutMilliseconds,
    this.cpuPeriod,
    this.cpuQuota,
    this.cpuSet,
    this.cpuShares,
    this.cpus,
    this.destroyGraceSeconds,
    this.devices,
    this.dns,
    this.dnsOpts,
    this.dnsSearches,
    this.domainname,
    this.entrypoints,
    this.envs,
    this.exitCode,
    this.gpus,
    this.groupAdds,
    this.healthcheck,
    this.hostname,
    this.hosts,
    this.image,
    this.init,
    this.ipcMode,
    this.labels,
    this.logDriver,
    this.logOpts,
    this.logs,
    this.maxRetryCount,
    this.memory,
    this.memoryReservation,
    this.memorySwap,
    this.mounts,
    this.mustRun,
    this.name,
    this.networkDatas,
    this.networkMode,
    this.networksAdvanced,
    this.pidMode,
    this.ports,
    this.privileged,
    this.publishAllPorts,
    this.readOnly,
    this.removeVolumes,
    this.restart,
    this.rm,
    this.runtime,
    this.securityOpts,
    this.shmSize,
    this.start,
    this.stdinOpen,
    this.stopSignal,
    this.stopTimeout,
    this.storageOpts,
    this.sysctls,
    this.tmpfs,
    this.tty,
    this.ulimits,
    this.uploads,
    this.user,
    this.usernsMode,
    this.volumes,
    this.wait,
    this.waitTimeout,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attach': ?attach,
      'bridge': ?bridge,
      'capabilities': ?pulumi.Input.mapOptionalInputValue<ContainerCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'cgroupParent': ?cgroupParent,
      'cgroupnsMode': ?cgroupnsMode,
      'command': ?command,
      'containerLogs': ?containerLogs,
      'containerReadRefreshTimeoutMilliseconds': ?containerReadRefreshTimeoutMilliseconds,
      'cpuPeriod': ?cpuPeriod,
      'cpuQuota': ?cpuQuota,
      'cpuSet': ?cpuSet,
      'cpuShares': ?cpuShares,
      'cpus': ?cpus,
      'destroyGraceSeconds': ?destroyGraceSeconds,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<ContainerDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<ContainerDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dns': ?dns,
      'dnsOpts': ?dnsOpts,
      'dnsSearches': ?dnsSearches,
      'domainname': ?domainname,
      'entrypoints': ?entrypoints,
      'envs': ?envs,
      'exitCode': ?exitCode,
      'gpus': ?gpus,
      'groupAdds': ?groupAdds,
      'healthcheck': ?pulumi.Input.mapOptionalInputValue<ContainerHealthcheck, Map<String, dynamic>>(healthcheck, (value) => value.toMap()),
      'hostname': ?hostname,
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<ContainerHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<ContainerHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'init': ?init,
      'ipcMode': ?ipcMode,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ContainerLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ContainerLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logDriver': ?logDriver,
      'logOpts': ?logOpts,
      'logs': ?logs,
      'maxRetryCount': ?maxRetryCount,
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'memorySwap': ?memorySwap,
      'mounts': ?pulumi.Input.mapOptionalInputValue<List<ContainerMount>, List<Map<String, dynamic>>>(mounts, (value) => pulumi.Input.encodeList<ContainerMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mustRun': ?mustRun,
      'name': ?name,
      'networkDatas': ?pulumi.Input.mapOptionalInputValue<List<ContainerNetworkData>, List<Map<String, dynamic>>>(networkDatas, (value) => pulumi.Input.encodeList<ContainerNetworkData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkMode': ?networkMode,
      'networksAdvanced': ?pulumi.Input.mapOptionalInputValue<List<ContainerNetworksAdvanced>, List<Map<String, dynamic>>>(networksAdvanced, (value) => pulumi.Input.encodeList<ContainerNetworksAdvanced, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pidMode': ?pidMode,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileged': ?privileged,
      'publishAllPorts': ?publishAllPorts,
      'readOnly': ?readOnly,
      'removeVolumes': ?removeVolumes,
      'restart': ?restart,
      'rm': ?rm,
      'runtime': ?runtime,
      'securityOpts': ?securityOpts,
      'shmSize': ?shmSize,
      'start': ?start,
      'stdinOpen': ?stdinOpen,
      'stopSignal': ?stopSignal,
      'stopTimeout': ?stopTimeout,
      'storageOpts': ?storageOpts,
      'sysctls': ?sysctls,
      'tmpfs': ?tmpfs,
      'tty': ?tty,
      'ulimits': ?pulumi.Input.mapOptionalInputValue<List<ContainerUlimit>, List<Map<String, dynamic>>>(ulimits, (value) => pulumi.Input.encodeList<ContainerUlimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uploads': ?pulumi.Input.mapOptionalInputValue<List<ContainerUpload>, List<Map<String, dynamic>>>(uploads, (value) => pulumi.Input.encodeList<ContainerUpload, Map<String, dynamic>>(value, (value) => value.toMap())),
      'user': ?user,
      'usernsMode': ?usernsMode,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ContainerVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ContainerVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wait': ?wait,
      'waitTimeout': ?waitTimeout,
      'workingDir': ?workingDir,
    };
  }

  factory ContainerState.fromMap(Map<String, dynamic> map) {
    return ContainerState(
      attach: map['attach'] == null ? null : (map['attach'] as bool).input(),
      bridge: map['bridge'] == null ? null : (map['bridge'] as String).input(),
      capabilities: map['capabilities'] == null ? null : (ContainerCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>())).input(),
      cgroupParent: map['cgroupParent'] == null ? null : (map['cgroupParent'] as String).input(),
      cgroupnsMode: map['cgroupnsMode'] == null ? null : (map['cgroupnsMode'] as String).input(),
      command: map['command'] == null ? null : ((map['command'] as List).cast<String>()).input(),
      containerLogs: map['containerLogs'] == null ? null : (map['containerLogs'] as String).input(),
      containerReadRefreshTimeoutMilliseconds: map['containerReadRefreshTimeoutMilliseconds'] == null ? null : (map['containerReadRefreshTimeoutMilliseconds'] as int).input(),
      cpuPeriod: map['cpuPeriod'] == null ? null : (map['cpuPeriod'] as int).input(),
      cpuQuota: map['cpuQuota'] == null ? null : (map['cpuQuota'] as int).input(),
      cpuSet: map['cpuSet'] == null ? null : (map['cpuSet'] as String).input(),
      cpuShares: map['cpuShares'] == null ? null : (map['cpuShares'] as int).input(),
      cpus: map['cpus'] == null ? null : (map['cpus'] as String).input(),
      destroyGraceSeconds: map['destroyGraceSeconds'] == null ? null : (map['destroyGraceSeconds'] as int).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<ContainerDevice>(map['devices'], (value) => ContainerDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dns: map['dns'] == null ? null : ((map['dns'] as List).cast<String>()).input(),
      dnsOpts: map['dnsOpts'] == null ? null : ((map['dnsOpts'] as List).cast<String>()).input(),
      dnsSearches: map['dnsSearches'] == null ? null : ((map['dnsSearches'] as List).cast<String>()).input(),
      domainname: map['domainname'] == null ? null : (map['domainname'] as String).input(),
      entrypoints: map['entrypoints'] == null ? null : ((map['entrypoints'] as List).cast<String>()).input(),
      envs: map['envs'] == null ? null : ((map['envs'] as List).cast<String>()).input(),
      exitCode: map['exitCode'] == null ? null : (map['exitCode'] as int).input(),
      gpus: map['gpus'] == null ? null : (map['gpus'] as String).input(),
      groupAdds: map['groupAdds'] == null ? null : ((map['groupAdds'] as List).cast<String>()).input(),
      healthcheck: map['healthcheck'] == null ? null : (ContainerHealthcheck.fromMap((map['healthcheck'] as Map).cast<String, dynamic>())).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<ContainerHost>(map['hosts'], (value) => ContainerHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      init: map['init'] == null ? null : (map['init'] as bool).input(),
      ipcMode: map['ipcMode'] == null ? null : (map['ipcMode'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<ContainerLabel>(map['labels'], (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logDriver: map['logDriver'] == null ? null : (map['logDriver'] as String).input(),
      logOpts: map['logOpts'] == null ? null : ((map['logOpts'] as Map).cast<String, String>()).input(),
      logs: map['logs'] == null ? null : (map['logs'] as bool).input(),
      maxRetryCount: map['maxRetryCount'] == null ? null : (map['maxRetryCount'] as int).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      memoryReservation: map['memoryReservation'] == null ? null : (map['memoryReservation'] as int).input(),
      memorySwap: map['memorySwap'] == null ? null : (map['memorySwap'] as int).input(),
      mounts: map['mounts'] == null ? null : (pulumi.Input.decodeList<ContainerMount>(map['mounts'], (value) => ContainerMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mustRun: map['mustRun'] == null ? null : (map['mustRun'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkDatas: map['networkDatas'] == null ? null : (pulumi.Input.decodeList<ContainerNetworkData>(map['networkDatas'], (value) => ContainerNetworkData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkMode: map['networkMode'] == null ? null : (map['networkMode'] as String).input(),
      networksAdvanced: map['networksAdvanced'] == null ? null : (pulumi.Input.decodeList<ContainerNetworksAdvanced>(map['networksAdvanced'], (value) => ContainerNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pidMode: map['pidMode'] == null ? null : (map['pidMode'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ContainerPort>(map['ports'], (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privileged: map['privileged'] == null ? null : (map['privileged'] as bool).input(),
      publishAllPorts: map['publishAllPorts'] == null ? null : (map['publishAllPorts'] as bool).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      removeVolumes: map['removeVolumes'] == null ? null : (map['removeVolumes'] as bool).input(),
      restart: map['restart'] == null ? null : (map['restart'] as String).input(),
      rm: map['rm'] == null ? null : (map['rm'] as bool).input(),
      runtime: map['runtime'] == null ? null : (map['runtime'] as String).input(),
      securityOpts: map['securityOpts'] == null ? null : ((map['securityOpts'] as List).cast<String>()).input(),
      shmSize: map['shmSize'] == null ? null : (map['shmSize'] as int).input(),
      start: map['start'] == null ? null : (map['start'] as bool).input(),
      stdinOpen: map['stdinOpen'] == null ? null : (map['stdinOpen'] as bool).input(),
      stopSignal: map['stopSignal'] == null ? null : (map['stopSignal'] as String).input(),
      stopTimeout: map['stopTimeout'] == null ? null : (map['stopTimeout'] as int).input(),
      storageOpts: map['storageOpts'] == null ? null : ((map['storageOpts'] as Map).cast<String, String>()).input(),
      sysctls: map['sysctls'] == null ? null : ((map['sysctls'] as Map).cast<String, String>()).input(),
      tmpfs: map['tmpfs'] == null ? null : ((map['tmpfs'] as Map).cast<String, String>()).input(),
      tty: map['tty'] == null ? null : (map['tty'] as bool).input(),
      ulimits: map['ulimits'] == null ? null : (pulumi.Input.decodeList<ContainerUlimit>(map['ulimits'], (value) => ContainerUlimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uploads: map['uploads'] == null ? null : (pulumi.Input.decodeList<ContainerUpload>(map['uploads'], (value) => ContainerUpload.fromMap((value as Map).cast<String, dynamic>()))).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
      usernsMode: map['usernsMode'] == null ? null : (map['usernsMode'] as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<ContainerVolume>(map['volumes'], (value) => ContainerVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      wait: map['wait'] == null ? null : (map['wait'] as bool).input(),
      waitTimeout: map['waitTimeout'] == null ? null : (map['waitTimeout'] as int).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir'] as String).input(),
    );
  }
}


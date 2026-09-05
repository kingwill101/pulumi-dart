// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_capabilities.dart';
import 'container_device.dart';
import 'container_device_read_bp.dart';
import 'container_device_read_iop.dart';
import 'container_device_request.dart';
import 'container_device_write_bp.dart';
import 'container_device_write_iop.dart';
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
  final pulumi.Input<bool?>? attach;
  /// The network bridge of the container as read from its NetworkSettings.
  final pulumi.Input<String?>? bridge;
  /// Add or drop certain linux capabilities.
  final pulumi.Input<ContainerCapabilities?>? capabilities;
  /// Optional parent cgroup for the container
  final pulumi.Input<String?>? cgroupParent;
  /// Cgroup namespace mode to use for the container. Possible values are: `private`, `host`.
  final pulumi.Input<String?>? cgroupnsMode;
  /// The command to use to start the container. For example, to run `/usr/bin/myprogram -f baz.conf` set the command to be `["/usr/bin/myprogram","-f","baz.conf"]`.
  final pulumi.Input<List<String>?>? command;
  /// The logs of the container if its execution is done (`attach` must be disabled).
  final pulumi.Input<String?>? containerLogs;
  /// The total number of milliseconds to wait for the container to reach status 'running'
  final pulumi.Input<int?>? containerReadRefreshTimeoutMilliseconds;
  /// Specify the CPU CFS scheduler period (in microseconds), which is used alongside `cpu-quota`. Is ignored if `cpus` is set.
  final pulumi.Input<int?>? cpuPeriod;
  /// Impose a CPU CFS quota on the container (in microseconds). The number of microseconds per `cpu-period` that the container is limited to before throttled. Is ignored if `cpus` is set.
  final pulumi.Input<int?>? cpuQuota;
  /// A comma-separated list or hyphen-separated range of CPUs a container can use, e.g. `0-1`.
  final pulumi.Input<String?>? cpuSet;
  /// CPU shares (relative weight) for the container.
  final pulumi.Input<int?>? cpuShares;
  /// Specify how much of the available CPU resources a container can use. e.g a value of 1.5 means the container is guaranteed at most one and a half of the CPUs. Has precedence over `cpuPeriod` and `cpuQuota`.
  final pulumi.Input<String?>? cpus;
  /// If defined will attempt to stop the container before destroying. Container will be destroyed after `n` seconds or on successful stop.
  final pulumi.Input<int?>? destroyGraceSeconds;
  /// Cgroup rules to allow access to classes of devices without binding specific device nodes.
  final pulumi.Input<List<String>?>? deviceCgroupRules;
  /// Limit read rate (bytes per second) from a device. This is the equivalent to repeating `--device-read-bps` for `docker run`.
  final pulumi.Input<List<ContainerDeviceReadBp>?>? deviceReadBps;
  /// Limit read rate (IO per second) from a device. This is the equivalent to repeating `--device-read-iops` for `docker run`.
  final pulumi.Input<List<ContainerDeviceReadIop>?>? deviceReadIops;
  /// Device requests for the container, such as CDI devices (e.g., `nvidia.com/gpu=all`) or GPU requests. This is the equivalent to using the `--device` flag for CDI devices in `docker run`.
  final pulumi.Input<List<ContainerDeviceRequest>?>? deviceRequests;
  /// Limit write rate (bytes per second) to a device. This is the equivalent to repeating `--device-write-bps` for `docker run`.
  final pulumi.Input<List<ContainerDeviceWriteBp>?>? deviceWriteBps;
  /// Limit write rate (IO per second) to a device. This is the equivalent to repeating `--device-write-iops` for `docker run`.
  final pulumi.Input<List<ContainerDeviceWriteIop>?>? deviceWriteIops;
  /// Bind traditional devices to the container (e.g., `/dev/nvidia0`). For CDI devices, use `deviceRequests` instead.
  final pulumi.Input<List<ContainerDevice>?>? devices;
  /// DNS servers to use.
  final pulumi.Input<List<String>?>? dns;
  /// DNS options used by the DNS provider(s), see `resolv.conf` documentation for valid list of options.
  final pulumi.Input<List<String>?>? dnsOpts;
  /// DNS search domains that are used when bare unqualified hostnames are used inside of the container.
  final pulumi.Input<List<String>?>? dnsSearches;
  /// Domain name of the container.
  final pulumi.Input<String?>? domainname;
  /// The command to use as the Entrypoint for the container. The Entrypoint allows you to configure a container to run as an executable. For example, to run `/usr/bin/myprogram` when starting a container, set the entrypoint to be `"/usr/bin/myprogram"]`.
  final pulumi.Input<List<String>?>? entrypoints;
  /// Environment variables to set in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  final pulumi.Input<List<String>?>? envs;
  /// The exit code of the container if its execution is done (`mustRun` must be disabled).
  final pulumi.Input<int?>? exitCode;
  /// GPU devices to add to the container. Supported values are `all` or `device=&lt;id[,id...]&gt;`, for example `device=0,2` or `device=GPU-3a23c669-1f69-c64e-cf85-44e9b07e7a2a`.
  final pulumi.Input<String?>? gpus;
  /// Additional groups for the container user
  final pulumi.Input<List<String>?>? groupAdds;
  /// A test to perform to check that the container is healthy
  final pulumi.Input<ContainerHealthcheck?>? healthcheck;
  /// Hostname of the container.
  final pulumi.Input<String?>? hostname;
  /// Additional hosts to add to the container.
  final pulumi.Input<List<ContainerHost>?>? hosts;
  /// The ID of the image to back this container. The easiest way to get this value is to use the `imageId` attribute of the `docker.RemoteImage` resource as is shown in the example.
  final pulumi.Input<String?>? image;
  /// Configured whether an init process should be injected for this container. If unset this will default to the `dockerd` defaults.
  final pulumi.Input<bool?>? init;
  /// IPC sharing mode for the container. Possible values are: `none`, `private`, `shareable`, `container:&lt;name|id&gt;` or `host`.
  final pulumi.Input<String?>? ipcMode;
  /// User-defined key/value metadata
  final pulumi.Input<List<ContainerLabel>?>? labels;
  /// The logging driver to use for the container.
  final pulumi.Input<String?>? logDriver;
  /// Key/value pairs to use as options for the logging driver.
  final pulumi.Input<Map<String, String>?>? logOpts;
  /// Save the container logs (`attach` must be enabled). Defaults to `false`.
  final pulumi.Input<bool?>? logs;
  /// The maximum amount of times to an attempt a restart when `restart` is set to 'on-failure'.
  final pulumi.Input<int?>? maxRetryCount;
  /// The memory limit for the container in MBs.
  final pulumi.Input<int?>? memory;
  /// The memory-resveration for the container in MBs. Defaults to 0. Allows you to specify a soft limit smaller than `memory` which is activated when Docker detects contention or low memory on the host machine. If you use `memory-reservation`, it must be set lower than `memory` for it to take precedence. Because it is a soft limit, it doesn't guarantee that the container doesn't exceed the limit.
  final pulumi.Input<int?>? memoryReservation;
  /// The total memory limit (memory + swap) for the container in MBs. This setting may compute to `-1` after `pulumi up` if the target host doesn't support memory swap, when that is the case docker will use a soft limitation.
  final pulumi.Input<int?>? memorySwap;
  /// Specification for mounts to be added to containers created as part of the service.
  final pulumi.Input<List<ContainerMount>?>? mounts;
  /// If `true`, then the Docker container will be kept running. If `false`, Terraform leaves the container alone. This attribute is also used to trigger a restart of a stopped container. If your container is stopped, Terraform will set `mustRun` to `false` and this will trigger a change. Defaults to `true`.
  final pulumi.Input<bool?>? mustRun;
  /// The name of the container.
  final pulumi.Input<String?>? name;
  /// The data of the networks the container is connected to.
  final pulumi.Input<List<ContainerNetworkData>?>? networkDatas;
  /// Network mode of the container. Defaults to `bridge`. If your host OS is any other OS, you need to set this value explicitly, e.g. `nat` when your container will be running on an Windows host. See https://docs.docker.com/engine/network/ for more information.
  final pulumi.Input<String?>? networkMode;
  /// The networks the container is attached to. This is the equivalent to the `--network` option of `docker run`
  final pulumi.Input<List<ContainerNetworksAdvanced>?>? networksAdvanced;
  /// The PID (Process) Namespace mode for the container. Either `container:&lt;name|id&gt;` or `host`.
  final pulumi.Input<String?>? pidMode;
  /// Platform in the format `os[/arch[/variant]]` used for image lookup and container runtime, for example `linux/amd64`.
  final pulumi.Input<String?>? platform;
  /// Publish a container's port(s) to the host.
  final pulumi.Input<List<ContainerPort>?>? ports;
  /// If `true`, the container runs in privileged mode.
  final pulumi.Input<bool?>? privileged;
  /// Publish all ports of the container.
  final pulumi.Input<bool?>? publishAllPorts;
  /// If `true`, the container will be started as readonly. Defaults to `false`.
  final pulumi.Input<bool?>? readOnly;
  /// If `true`, it will remove anonymous volumes associated with the container. Defaults to `true`.
  final pulumi.Input<bool?>? removeVolumes;
  /// The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to `no`.
  final pulumi.Input<String?>? restart;
  /// If `true`, then the container will be automatically removed when it exits. Defaults to `false`.
  final pulumi.Input<bool?>? rm;
  /// Runtime to use for the container.
  final pulumi.Input<String?>? runtime;
  /// List of string values to customize labels for MLS systems, such as SELinux. See https://docs.docker.com/engine/reference/run/#security-configuration.
  final pulumi.Input<List<String>?>? securityOpts;
  /// Size of `/dev/shm` in MBs.
  final pulumi.Input<int?>? shmSize;
  /// If `true`, then the Docker container will be started after creation. If `false`, then the container is only created. Defaults to `true`.
  final pulumi.Input<bool?>? start;
  /// If `true`, keep STDIN open even if not attached (`docker run -i`). Defaults to `false`.
  final pulumi.Input<bool?>? stdinOpen;
  /// Signal to stop a container (default `SIGTERM`).
  final pulumi.Input<String?>? stopSignal;
  /// Timeout (in seconds) to stop a container.
  final pulumi.Input<int?>? stopTimeout;
  /// Key/value pairs for the storage driver options, e.g. `size`: `120G`
  final pulumi.Input<Map<String, String>?>? storageOpts;
  /// A map of kernel parameters (sysctls) to set in the container.
  final pulumi.Input<Map<String, String>?>? sysctls;
  /// A map of container directories which should be replaced by `tmpfs mounts`, and their corresponding mount options.
  final pulumi.Input<Map<String, String>?>? tmpfs;
  /// If `true`, allocate a pseudo-tty (`docker run -t`). Defaults to `false`.
  final pulumi.Input<bool?>? tty;
  /// Ulimit options to add.
  final pulumi.Input<List<ContainerUlimit>?>? ulimits;
  /// Specifies files to upload to the container before starting it. Only one of `content` or `contentBase64` can be set and at least one of them has to be set.
  final pulumi.Input<List<ContainerUpload>?>? uploads;
  /// User used for run the first process. Format is `user` or `user:group` which user and group can be passed literally or by name.
  final pulumi.Input<String?>? user;
  /// Sets the usernamespace mode for the container when usernamespace remapping option is enabled.
  final pulumi.Input<String?>? usernsMode;
  /// Spec for mounting volumes in the container.
  final pulumi.Input<List<ContainerVolume>?>? volumes;
  /// If `true`, then the Docker container is waited for being healthy state after creation. This requires your container to have a healthcheck, otherwise this provider will error. If `false`, then the container health state is not checked. Defaults to `false`.
  final pulumi.Input<bool?>? wait;
  /// The timeout in seconds to wait the container to be healthy after creation. Defaults to `60`.
  final pulumi.Input<int?>? waitTimeout;
  /// The working directory for commands to run in.
  final pulumi.Input<String?>? workingDir;

  /// Creates a new [ContainerState].
  /// [attach] If `true` attach to the container after its creation and waits the end of its execution. Defaults to `false`.
  /// [bridge] The network bridge of the container as read from its NetworkSettings.
  /// [capabilities] Add or drop certain linux capabilities.
  /// [cgroupParent] Optional parent cgroup for the container
  /// [cgroupnsMode] Cgroup namespace mode to use for the container. Possible values are: `private`, `host`.
  /// [command] The command to use to start the container. For example, to run `/usr/bin/myprogram -f baz.conf` set the command to be `["/usr/bin/myprogram","-f","baz.conf"]`.
  /// [containerLogs] The logs of the container if its execution is done (`attach` must be disabled).
  /// [containerReadRefreshTimeoutMilliseconds] The total number of milliseconds to wait for the container to reach status 'running'
  /// [cpuPeriod] Specify the CPU CFS scheduler period (in microseconds), which is used alongside `cpu-quota`. Is ignored if `cpus` is set.
  /// [cpuQuota] Impose a CPU CFS quota on the container (in microseconds). The number of microseconds per `cpu-period` that the container is limited to before throttled. Is ignored if `cpus` is set.
  /// [cpuSet] A comma-separated list or hyphen-separated range of CPUs a container can use, e.g. `0-1`.
  /// [cpuShares] CPU shares (relative weight) for the container.
  /// [cpus] Specify how much of the available CPU resources a container can use. e.g a value of 1.5 means the container is guaranteed at most one and a half of the CPUs. Has precedence over `cpuPeriod` and `cpuQuota`.
  /// [destroyGraceSeconds] If defined will attempt to stop the container before destroying. Container will be destroyed after `n` seconds or on successful stop.
  /// [deviceCgroupRules] Cgroup rules to allow access to classes of devices without binding specific device nodes.
  /// [deviceReadBps] Limit read rate (bytes per second) from a device. This is the equivalent to repeating `--device-read-bps` for `docker run`.
  /// [deviceReadIops] Limit read rate (IO per second) from a device. This is the equivalent to repeating `--device-read-iops` for `docker run`.
  /// [deviceRequests] Device requests for the container, such as CDI devices (e.g., `nvidia.com/gpu=all`) or GPU requests. This is the equivalent to using the `--device` flag for CDI devices in `docker run`.
  /// [deviceWriteBps] Limit write rate (bytes per second) to a device. This is the equivalent to repeating `--device-write-bps` for `docker run`.
  /// [deviceWriteIops] Limit write rate (IO per second) to a device. This is the equivalent to repeating `--device-write-iops` for `docker run`.
  /// [devices] Bind traditional devices to the container (e.g., `/dev/nvidia0`). For CDI devices, use `deviceRequests` instead.
  /// [dns] DNS servers to use.
  /// [dnsOpts] DNS options used by the DNS provider(s), see `resolv.conf` documentation for valid list of options.
  /// [dnsSearches] DNS search domains that are used when bare unqualified hostnames are used inside of the container.
  /// [domainname] Domain name of the container.
  /// [entrypoints] The command to use as the Entrypoint for the container. The Entrypoint allows you to configure a container to run as an executable. For example, to run `/usr/bin/myprogram` when starting a container, set the entrypoint to be `"/usr/bin/myprogram"]`.
  /// [envs] Environment variables to set in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  /// [exitCode] The exit code of the container if its execution is done (`mustRun` must be disabled).
  /// [gpus] GPU devices to add to the container. Supported values are `all` or `device=&lt;id[,id...]&gt;`, for example `device=0,2` or `device=GPU-3a23c669-1f69-c64e-cf85-44e9b07e7a2a`.
  /// [groupAdds] Additional groups for the container user
  /// [healthcheck] A test to perform to check that the container is healthy
  /// [hostname] Hostname of the container.
  /// [hosts] Additional hosts to add to the container.
  /// [image] The ID of the image to back this container. The easiest way to get this value is to use the `imageId` attribute of the `docker.RemoteImage` resource as is shown in the example.
  /// [init] Configured whether an init process should be injected for this container. If unset this will default to the `dockerd` defaults.
  /// [ipcMode] IPC sharing mode for the container. Possible values are: `none`, `private`, `shareable`, `container:&lt;name|id&gt;` or `host`.
  /// [labels] User-defined key/value metadata
  /// [logDriver] The logging driver to use for the container.
  /// [logOpts] Key/value pairs to use as options for the logging driver.
  /// [logs] Save the container logs (`attach` must be enabled). Defaults to `false`.
  /// [maxRetryCount] The maximum amount of times to an attempt a restart when `restart` is set to 'on-failure'.
  /// [memory] The memory limit for the container in MBs.
  /// [memoryReservation] The memory-resveration for the container in MBs. Defaults to 0. Allows you to specify a soft limit smaller than `memory` which is activated when Docker detects contention or low memory on the host machine. If you use `memory-reservation`, it must be set lower than `memory` for it to take precedence. Because it is a soft limit, it doesn't guarantee that the container doesn't exceed the limit.
  /// [memorySwap] The total memory limit (memory + swap) for the container in MBs. This setting may compute to `-1` after `pulumi up` if the target host doesn't support memory swap, when that is the case docker will use a soft limitation.
  /// [mounts] Specification for mounts to be added to containers created as part of the service.
  /// [mustRun] If `true`, then the Docker container will be kept running. If `false`, Terraform leaves the container alone. This attribute is also used to trigger a restart of a stopped container. If your container is stopped, Terraform will set `mustRun` to `false` and this will trigger a change. Defaults to `true`.
  /// [name] The name of the container.
  /// [networkDatas] The data of the networks the container is connected to.
  /// [networkMode] Network mode of the container. Defaults to `bridge`. If your host OS is any other OS, you need to set this value explicitly, e.g. `nat` when your container will be running on an Windows host. See https://docs.docker.com/engine/network/ for more information.
  /// [networksAdvanced] The networks the container is attached to. This is the equivalent to the `--network` option of `docker run`
  /// [pidMode] The PID (Process) Namespace mode for the container. Either `container:&lt;name|id&gt;` or `host`.
  /// [platform] Platform in the format `os[/arch[/variant]]` used for image lookup and container runtime, for example `linux/amd64`.
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
  /// [uploads] Specifies files to upload to the container before starting it. Only one of `content` or `contentBase64` can be set and at least one of them has to be set.
  /// [user] User used for run the first process. Format is `user` or `user:group` which user and group can be passed literally or by name.
  /// [usernsMode] Sets the usernamespace mode for the container when usernamespace remapping option is enabled.
  /// [volumes] Spec for mounting volumes in the container.
  /// [wait] If `true`, then the Docker container is waited for being healthy state after creation. This requires your container to have a healthcheck, otherwise this provider will error. If `false`, then the container health state is not checked. Defaults to `false`.
  /// [waitTimeout] The timeout in seconds to wait the container to be healthy after creation. Defaults to `60`.
  /// [workingDir] The working directory for commands to run in.
  const ContainerState({
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
    this.deviceCgroupRules,
    this.deviceReadBps,
    this.deviceReadIops,
    this.deviceRequests,
    this.deviceWriteBps,
    this.deviceWriteIops,
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
    this.platform,
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
      'deviceCgroupRules': ?deviceCgroupRules,
      'deviceReadBps': ?pulumi.Input.mapOptionalInputValue<List<ContainerDeviceReadBp>, List<Map<String, dynamic>>>(deviceReadBps, (value) => pulumi.Input.encodeList<ContainerDeviceReadBp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceReadIops': ?pulumi.Input.mapOptionalInputValue<List<ContainerDeviceReadIop>, List<Map<String, dynamic>>>(deviceReadIops, (value) => pulumi.Input.encodeList<ContainerDeviceReadIop, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceRequests': ?pulumi.Input.mapOptionalInputValue<List<ContainerDeviceRequest>, List<Map<String, dynamic>>>(deviceRequests, (value) => pulumi.Input.encodeList<ContainerDeviceRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceWriteBps': ?pulumi.Input.mapOptionalInputValue<List<ContainerDeviceWriteBp>, List<Map<String, dynamic>>>(deviceWriteBps, (value) => pulumi.Input.encodeList<ContainerDeviceWriteBp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceWriteIops': ?pulumi.Input.mapOptionalInputValue<List<ContainerDeviceWriteIop>, List<Map<String, dynamic>>>(deviceWriteIops, (value) => pulumi.Input.encodeList<ContainerDeviceWriteIop, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'platform': ?platform,
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
      attach: (() { final guardedValue = map['attach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bridge: (() { final guardedValue = map['bridge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cgroupParent: (() { final guardedValue = map['cgroupParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cgroupnsMode: (() { final guardedValue = map['cgroupnsMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerLogs: (() { final guardedValue = map['containerLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerReadRefreshTimeoutMilliseconds: (() { final guardedValue = map['containerReadRefreshTimeoutMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpuPeriod: (() { final guardedValue = map['cpuPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpuQuota: (() { final guardedValue = map['cpuQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpuSet: (() { final guardedValue = map['cpuSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuShares: (() { final guardedValue = map['cpuShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpus: (() { final guardedValue = map['cpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destroyGraceSeconds: (() { final guardedValue = map['destroyGraceSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      deviceCgroupRules: (() { final guardedValue = map['deviceCgroupRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deviceReadBps: (() { final guardedValue = map['deviceReadBps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDeviceReadBp>(guardedValue, (value) => ContainerDeviceReadBp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceReadIops: (() { final guardedValue = map['deviceReadIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDeviceReadIop>(guardedValue, (value) => ContainerDeviceReadIop.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceRequests: (() { final guardedValue = map['deviceRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDeviceRequest>(guardedValue, (value) => ContainerDeviceRequest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceWriteBps: (() { final guardedValue = map['deviceWriteBps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDeviceWriteBp>(guardedValue, (value) => ContainerDeviceWriteBp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceWriteIops: (() { final guardedValue = map['deviceWriteIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDeviceWriteIop>(guardedValue, (value) => ContainerDeviceWriteIop.fromMap((value as Map).cast<String, dynamic>()))); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDevice>(guardedValue, (value) => ContainerDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsOpts: (() { final guardedValue = map['dnsOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsSearches: (() { final guardedValue = map['dnsSearches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domainname: (() { final guardedValue = map['domainname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entrypoints: (() { final guardedValue = map['entrypoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exitCode: (() { final guardedValue = map['exitCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      gpus: (() { final guardedValue = map['gpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupAdds: (() { final guardedValue = map['groupAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      healthcheck: (() { final guardedValue = map['healthcheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerHost>(guardedValue, (value) => ContainerHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      init: (() { final guardedValue = map['init']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipcMode: (() { final guardedValue = map['ipcMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerLabel>(guardedValue, (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logDriver: (() { final guardedValue = map['logDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logOpts: (() { final guardedValue = map['logOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRetryCount: (() { final guardedValue = map['maxRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memoryReservation: (() { final guardedValue = map['memoryReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memorySwap: (() { final guardedValue = map['memorySwap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mounts: (() { final guardedValue = map['mounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerMount>(guardedValue, (value) => ContainerMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mustRun: (() { final guardedValue = map['mustRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkDatas: (() { final guardedValue = map['networkDatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerNetworkData>(guardedValue, (value) => ContainerNetworkData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networksAdvanced: (() { final guardedValue = map['networksAdvanced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerNetworksAdvanced>(guardedValue, (value) => ContainerNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pidMode: (() { final guardedValue = map['pidMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerPort>(guardedValue, (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publishAllPorts: (() { final guardedValue = map['publishAllPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      removeVolumes: (() { final guardedValue = map['removeVolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restart: (() { final guardedValue = map['restart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rm: (() { final guardedValue = map['rm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityOpts: (() { final guardedValue = map['securityOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      shmSize: (() { final guardedValue = map['shmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stdinOpen: (() { final guardedValue = map['stdinOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stopSignal: (() { final guardedValue = map['stopSignal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stopTimeout: (() { final guardedValue = map['stopTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      storageOpts: (() { final guardedValue = map['storageOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sysctls: (() { final guardedValue = map['sysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tmpfs: (() { final guardedValue = map['tmpfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tty: (() { final guardedValue = map['tty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ulimits: (() { final guardedValue = map['ulimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerUlimit>(guardedValue, (value) => ContainerUlimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uploads: (() { final guardedValue = map['uploads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerUpload>(guardedValue, (value) => ContainerUpload.fromMap((value as Map).cast<String, dynamic>()))); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernsMode: (() { final guardedValue = map['usernsMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerVolume>(guardedValue, (value) => ContainerVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wait: (() { final guardedValue = map['wait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      waitTimeout: (() { final guardedValue = map['waitTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

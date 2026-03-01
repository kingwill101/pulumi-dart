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
    pulumi.Output<bool>? attach,
    pulumi.Output<String>? bridge,
    pulumi.Output<ContainerCapabilities>? capabilities,
    pulumi.Output<String>? cgroupParent,
    pulumi.Output<String>? cgroupnsMode,
    pulumi.Output<List<String>>? command,
    pulumi.Output<String>? containerLogs,
    pulumi.Output<int>? containerReadRefreshTimeoutMilliseconds,
    pulumi.Output<int>? cpuPeriod,
    pulumi.Output<int>? cpuQuota,
    pulumi.Output<String>? cpuSet,
    pulumi.Output<int>? cpuShares,
    pulumi.Output<String>? cpus,
    pulumi.Output<int>? destroyGraceSeconds,
    pulumi.Output<List<ContainerDevice>>? devices,
    pulumi.Output<List<String>>? dns,
    pulumi.Output<List<String>>? dnsOpts,
    pulumi.Output<List<String>>? dnsSearches,
    pulumi.Output<String>? domainname,
    pulumi.Output<List<String>>? entrypoints,
    pulumi.Output<List<String>>? envs,
    pulumi.Output<int>? exitCode,
    pulumi.Output<String>? gpus,
    pulumi.Output<List<String>>? groupAdds,
    pulumi.Output<ContainerHealthcheck>? healthcheck,
    pulumi.Output<String>? hostname,
    pulumi.Output<List<ContainerHost>>? hosts,
    pulumi.Output<String>? image,
    pulumi.Output<bool>? init,
    pulumi.Output<String>? ipcMode,
    pulumi.Output<List<ContainerLabel>>? labels,
    pulumi.Output<String>? logDriver,
    pulumi.Output<Map<String, String>>? logOpts,
    pulumi.Output<bool>? logs,
    pulumi.Output<int>? maxRetryCount,
    pulumi.Output<int>? memory,
    pulumi.Output<int>? memoryReservation,
    pulumi.Output<int>? memorySwap,
    pulumi.Output<List<ContainerMount>>? mounts,
    pulumi.Output<bool>? mustRun,
    pulumi.Output<String>? name,
    pulumi.Output<List<ContainerNetworkData>>? networkDatas,
    pulumi.Output<String>? networkMode,
    pulumi.Output<List<ContainerNetworksAdvanced>>? networksAdvanced,
    pulumi.Output<String>? pidMode,
    pulumi.Output<List<ContainerPort>>? ports,
    pulumi.Output<bool>? privileged,
    pulumi.Output<bool>? publishAllPorts,
    pulumi.Output<bool>? readOnly,
    pulumi.Output<bool>? removeVolumes,
    pulumi.Output<String>? restart,
    pulumi.Output<bool>? rm,
    pulumi.Output<String>? runtime,
    pulumi.Output<List<String>>? securityOpts,
    pulumi.Output<int>? shmSize,
    pulumi.Output<bool>? start,
    pulumi.Output<bool>? stdinOpen,
    pulumi.Output<String>? stopSignal,
    pulumi.Output<int>? stopTimeout,
    pulumi.Output<Map<String, String>>? storageOpts,
    pulumi.Output<Map<String, String>>? sysctls,
    pulumi.Output<Map<String, String>>? tmpfs,
    pulumi.Output<bool>? tty,
    pulumi.Output<List<ContainerUlimit>>? ulimits,
    pulumi.Output<List<ContainerUpload>>? uploads,
    pulumi.Output<String>? user,
    pulumi.Output<String>? usernsMode,
    pulumi.Output<List<ContainerVolume>>? volumes,
    pulumi.Output<bool>? wait,
    pulumi.Output<int>? waitTimeout,
    pulumi.Output<String>? workingDir,
  }) :
      attach = pulumi.Input.asOptionalInput<bool>(attach),
      bridge = pulumi.Input.asOptionalInput<String>(bridge),
      capabilities = pulumi.Input.asOptionalInput<ContainerCapabilities>(capabilities),
      cgroupParent = pulumi.Input.asOptionalInput<String>(cgroupParent),
      cgroupnsMode = pulumi.Input.asOptionalInput<String>(cgroupnsMode),
      command = pulumi.Input.asOptionalInput<List<String>>(command),
      containerLogs = pulumi.Input.asOptionalInput<String>(containerLogs),
      containerReadRefreshTimeoutMilliseconds = pulumi.Input.asOptionalInput<int>(containerReadRefreshTimeoutMilliseconds),
      cpuPeriod = pulumi.Input.asOptionalInput<int>(cpuPeriod),
      cpuQuota = pulumi.Input.asOptionalInput<int>(cpuQuota),
      cpuSet = pulumi.Input.asOptionalInput<String>(cpuSet),
      cpuShares = pulumi.Input.asOptionalInput<int>(cpuShares),
      cpus = pulumi.Input.asOptionalInput<String>(cpus),
      destroyGraceSeconds = pulumi.Input.asOptionalInput<int>(destroyGraceSeconds),
      devices = pulumi.Input.asOptionalInput<List<ContainerDevice>>(devices),
      dns = pulumi.Input.asOptionalInput<List<String>>(dns),
      dnsOpts = pulumi.Input.asOptionalInput<List<String>>(dnsOpts),
      dnsSearches = pulumi.Input.asOptionalInput<List<String>>(dnsSearches),
      domainname = pulumi.Input.asOptionalInput<String>(domainname),
      entrypoints = pulumi.Input.asOptionalInput<List<String>>(entrypoints),
      envs = pulumi.Input.asOptionalInput<List<String>>(envs),
      exitCode = pulumi.Input.asOptionalInput<int>(exitCode),
      gpus = pulumi.Input.asOptionalInput<String>(gpus),
      groupAdds = pulumi.Input.asOptionalInput<List<String>>(groupAdds),
      healthcheck = pulumi.Input.asOptionalInput<ContainerHealthcheck>(healthcheck),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      hosts = pulumi.Input.asOptionalInput<List<ContainerHost>>(hosts),
      image = pulumi.Input.asOptionalInput<String>(image),
      init = pulumi.Input.asOptionalInput<bool>(init),
      ipcMode = pulumi.Input.asOptionalInput<String>(ipcMode),
      labels = pulumi.Input.asOptionalInput<List<ContainerLabel>>(labels),
      logDriver = pulumi.Input.asOptionalInput<String>(logDriver),
      logOpts = pulumi.Input.asOptionalInput<Map<String, String>>(logOpts),
      logs = pulumi.Input.asOptionalInput<bool>(logs),
      maxRetryCount = pulumi.Input.asOptionalInput<int>(maxRetryCount),
      memory = pulumi.Input.asOptionalInput<int>(memory),
      memoryReservation = pulumi.Input.asOptionalInput<int>(memoryReservation),
      memorySwap = pulumi.Input.asOptionalInput<int>(memorySwap),
      mounts = pulumi.Input.asOptionalInput<List<ContainerMount>>(mounts),
      mustRun = pulumi.Input.asOptionalInput<bool>(mustRun),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkDatas = pulumi.Input.asOptionalInput<List<ContainerNetworkData>>(networkDatas),
      networkMode = pulumi.Input.asOptionalInput<String>(networkMode),
      networksAdvanced = pulumi.Input.asOptionalInput<List<ContainerNetworksAdvanced>>(networksAdvanced),
      pidMode = pulumi.Input.asOptionalInput<String>(pidMode),
      ports = pulumi.Input.asOptionalInput<List<ContainerPort>>(ports),
      privileged = pulumi.Input.asOptionalInput<bool>(privileged),
      publishAllPorts = pulumi.Input.asOptionalInput<bool>(publishAllPorts),
      readOnly = pulumi.Input.asOptionalInput<bool>(readOnly),
      removeVolumes = pulumi.Input.asOptionalInput<bool>(removeVolumes),
      restart = pulumi.Input.asOptionalInput<String>(restart),
      rm = pulumi.Input.asOptionalInput<bool>(rm),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      securityOpts = pulumi.Input.asOptionalInput<List<String>>(securityOpts),
      shmSize = pulumi.Input.asOptionalInput<int>(shmSize),
      start = pulumi.Input.asOptionalInput<bool>(start),
      stdinOpen = pulumi.Input.asOptionalInput<bool>(stdinOpen),
      stopSignal = pulumi.Input.asOptionalInput<String>(stopSignal),
      stopTimeout = pulumi.Input.asOptionalInput<int>(stopTimeout),
      storageOpts = pulumi.Input.asOptionalInput<Map<String, String>>(storageOpts),
      sysctls = pulumi.Input.asOptionalInput<Map<String, String>>(sysctls),
      tmpfs = pulumi.Input.asOptionalInput<Map<String, String>>(tmpfs),
      tty = pulumi.Input.asOptionalInput<bool>(tty),
      ulimits = pulumi.Input.asOptionalInput<List<ContainerUlimit>>(ulimits),
      uploads = pulumi.Input.asOptionalInput<List<ContainerUpload>>(uploads),
      user = pulumi.Input.asOptionalInput<String>(user),
      usernsMode = pulumi.Input.asOptionalInput<String>(usernsMode),
      volumes = pulumi.Input.asOptionalInput<List<ContainerVolume>>(volumes),
      wait = pulumi.Input.asOptionalInput<bool>(wait),
      waitTimeout = pulumi.Input.asOptionalInput<int>(waitTimeout),
      workingDir = pulumi.Input.asOptionalInput<String>(workingDir);

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
      attach: map['attach'] == null ? null : pulumi.Output.create<bool>(map['attach'] as bool),
      bridge: map['bridge'] == null ? null : pulumi.Output.create<String>(map['bridge'] as String),
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<ContainerCapabilities>(ContainerCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>())),
      cgroupParent: map['cgroupParent'] == null ? null : pulumi.Output.create<String>(map['cgroupParent'] as String),
      cgroupnsMode: map['cgroupnsMode'] == null ? null : pulumi.Output.create<String>(map['cgroupnsMode'] as String),
      command: map['command'] == null ? null : pulumi.Output.create<List<String>>((map['command'] as List).cast<String>()),
      containerLogs: map['containerLogs'] == null ? null : pulumi.Output.create<String>(map['containerLogs'] as String),
      containerReadRefreshTimeoutMilliseconds: map['containerReadRefreshTimeoutMilliseconds'] == null ? null : pulumi.Output.create<int>(map['containerReadRefreshTimeoutMilliseconds'] as int),
      cpuPeriod: map['cpuPeriod'] == null ? null : pulumi.Output.create<int>(map['cpuPeriod'] as int),
      cpuQuota: map['cpuQuota'] == null ? null : pulumi.Output.create<int>(map['cpuQuota'] as int),
      cpuSet: map['cpuSet'] == null ? null : pulumi.Output.create<String>(map['cpuSet'] as String),
      cpuShares: map['cpuShares'] == null ? null : pulumi.Output.create<int>(map['cpuShares'] as int),
      cpus: map['cpus'] == null ? null : pulumi.Output.create<String>(map['cpus'] as String),
      destroyGraceSeconds: map['destroyGraceSeconds'] == null ? null : pulumi.Output.create<int>(map['destroyGraceSeconds'] as int),
      devices: map['devices'] == null ? null : pulumi.Output.create<List<ContainerDevice>>(pulumi.Input.decodeList<ContainerDevice>(map['devices'], (value) => ContainerDevice.fromMap((value as Map).cast<String, dynamic>()))),
      dns: map['dns'] == null ? null : pulumi.Output.create<List<String>>((map['dns'] as List).cast<String>()),
      dnsOpts: map['dnsOpts'] == null ? null : pulumi.Output.create<List<String>>((map['dnsOpts'] as List).cast<String>()),
      dnsSearches: map['dnsSearches'] == null ? null : pulumi.Output.create<List<String>>((map['dnsSearches'] as List).cast<String>()),
      domainname: map['domainname'] == null ? null : pulumi.Output.create<String>(map['domainname'] as String),
      entrypoints: map['entrypoints'] == null ? null : pulumi.Output.create<List<String>>((map['entrypoints'] as List).cast<String>()),
      envs: map['envs'] == null ? null : pulumi.Output.create<List<String>>((map['envs'] as List).cast<String>()),
      exitCode: map['exitCode'] == null ? null : pulumi.Output.create<int>(map['exitCode'] as int),
      gpus: map['gpus'] == null ? null : pulumi.Output.create<String>(map['gpus'] as String),
      groupAdds: map['groupAdds'] == null ? null : pulumi.Output.create<List<String>>((map['groupAdds'] as List).cast<String>()),
      healthcheck: map['healthcheck'] == null ? null : pulumi.Output.create<ContainerHealthcheck>(ContainerHealthcheck.fromMap((map['healthcheck'] as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      hosts: map['hosts'] == null ? null : pulumi.Output.create<List<ContainerHost>>(pulumi.Input.decodeList<ContainerHost>(map['hosts'], (value) => ContainerHost.fromMap((value as Map).cast<String, dynamic>()))),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      init: map['init'] == null ? null : pulumi.Output.create<bool>(map['init'] as bool),
      ipcMode: map['ipcMode'] == null ? null : pulumi.Output.create<String>(map['ipcMode'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<ContainerLabel>>(pulumi.Input.decodeList<ContainerLabel>(map['labels'], (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>()))),
      logDriver: map['logDriver'] == null ? null : pulumi.Output.create<String>(map['logDriver'] as String),
      logOpts: map['logOpts'] == null ? null : pulumi.Output.create<Map<String, String>>((map['logOpts'] as Map).cast<String, String>()),
      logs: map['logs'] == null ? null : pulumi.Output.create<bool>(map['logs'] as bool),
      maxRetryCount: map['maxRetryCount'] == null ? null : pulumi.Output.create<int>(map['maxRetryCount'] as int),
      memory: map['memory'] == null ? null : pulumi.Output.create<int>(map['memory'] as int),
      memoryReservation: map['memoryReservation'] == null ? null : pulumi.Output.create<int>(map['memoryReservation'] as int),
      memorySwap: map['memorySwap'] == null ? null : pulumi.Output.create<int>(map['memorySwap'] as int),
      mounts: map['mounts'] == null ? null : pulumi.Output.create<List<ContainerMount>>(pulumi.Input.decodeList<ContainerMount>(map['mounts'], (value) => ContainerMount.fromMap((value as Map).cast<String, dynamic>()))),
      mustRun: map['mustRun'] == null ? null : pulumi.Output.create<bool>(map['mustRun'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkDatas: map['networkDatas'] == null ? null : pulumi.Output.create<List<ContainerNetworkData>>(pulumi.Input.decodeList<ContainerNetworkData>(map['networkDatas'], (value) => ContainerNetworkData.fromMap((value as Map).cast<String, dynamic>()))),
      networkMode: map['networkMode'] == null ? null : pulumi.Output.create<String>(map['networkMode'] as String),
      networksAdvanced: map['networksAdvanced'] == null ? null : pulumi.Output.create<List<ContainerNetworksAdvanced>>(pulumi.Input.decodeList<ContainerNetworksAdvanced>(map['networksAdvanced'], (value) => ContainerNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>()))),
      pidMode: map['pidMode'] == null ? null : pulumi.Output.create<String>(map['pidMode'] as String),
      ports: map['ports'] == null ? null : pulumi.Output.create<List<ContainerPort>>(pulumi.Input.decodeList<ContainerPort>(map['ports'], (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>()))),
      privileged: map['privileged'] == null ? null : pulumi.Output.create<bool>(map['privileged'] as bool),
      publishAllPorts: map['publishAllPorts'] == null ? null : pulumi.Output.create<bool>(map['publishAllPorts'] as bool),
      readOnly: map['readOnly'] == null ? null : pulumi.Output.create<bool>(map['readOnly'] as bool),
      removeVolumes: map['removeVolumes'] == null ? null : pulumi.Output.create<bool>(map['removeVolumes'] as bool),
      restart: map['restart'] == null ? null : pulumi.Output.create<String>(map['restart'] as String),
      rm: map['rm'] == null ? null : pulumi.Output.create<bool>(map['rm'] as bool),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<String>(map['runtime'] as String),
      securityOpts: map['securityOpts'] == null ? null : pulumi.Output.create<List<String>>((map['securityOpts'] as List).cast<String>()),
      shmSize: map['shmSize'] == null ? null : pulumi.Output.create<int>(map['shmSize'] as int),
      start: map['start'] == null ? null : pulumi.Output.create<bool>(map['start'] as bool),
      stdinOpen: map['stdinOpen'] == null ? null : pulumi.Output.create<bool>(map['stdinOpen'] as bool),
      stopSignal: map['stopSignal'] == null ? null : pulumi.Output.create<String>(map['stopSignal'] as String),
      stopTimeout: map['stopTimeout'] == null ? null : pulumi.Output.create<int>(map['stopTimeout'] as int),
      storageOpts: map['storageOpts'] == null ? null : pulumi.Output.create<Map<String, String>>((map['storageOpts'] as Map).cast<String, String>()),
      sysctls: map['sysctls'] == null ? null : pulumi.Output.create<Map<String, String>>((map['sysctls'] as Map).cast<String, String>()),
      tmpfs: map['tmpfs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tmpfs'] as Map).cast<String, String>()),
      tty: map['tty'] == null ? null : pulumi.Output.create<bool>(map['tty'] as bool),
      ulimits: map['ulimits'] == null ? null : pulumi.Output.create<List<ContainerUlimit>>(pulumi.Input.decodeList<ContainerUlimit>(map['ulimits'], (value) => ContainerUlimit.fromMap((value as Map).cast<String, dynamic>()))),
      uploads: map['uploads'] == null ? null : pulumi.Output.create<List<ContainerUpload>>(pulumi.Input.decodeList<ContainerUpload>(map['uploads'], (value) => ContainerUpload.fromMap((value as Map).cast<String, dynamic>()))),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
      usernsMode: map['usernsMode'] == null ? null : pulumi.Output.create<String>(map['usernsMode'] as String),
      volumes: map['volumes'] == null ? null : pulumi.Output.create<List<ContainerVolume>>(pulumi.Input.decodeList<ContainerVolume>(map['volumes'], (value) => ContainerVolume.fromMap((value as Map).cast<String, dynamic>()))),
      wait: map['wait'] == null ? null : pulumi.Output.create<bool>(map['wait'] as bool),
      waitTimeout: map['waitTimeout'] == null ? null : pulumi.Output.create<int>(map['waitTimeout'] as int),
      workingDir: map['workingDir'] == null ? null : pulumi.Output.create<String>(map['workingDir'] as String),
    );
  }
}


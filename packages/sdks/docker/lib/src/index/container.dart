import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';
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
import 'container_state.dart';
import 'container_ulimit.dart';
import 'container_upload.dart';
import 'container_volume.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages the lifecycle of a Docker container.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// // Find the latest Ubuntu precise image.
/// const ubuntuRemoteImage = new docker.RemoteImage("ubuntu", {name: "ubuntu:precise"});
/// // Start a container
/// const ubuntu = new docker.Container("ubuntu", {
///     name: "foo",
///     image: ubuntuRemoteImage.imageId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// # Find the latest Ubuntu precise image.
/// ubuntu_remote_image = docker.RemoteImage("ubuntu", name="ubuntu:precise")
/// # Start a container
/// ubuntu = docker.Container("ubuntu",
///     name="foo",
///     image=ubuntu_remote_image.image_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Find the latest Ubuntu precise image.
///     var ubuntuRemoteImage = new Docker.RemoteImage("ubuntu", new()
///     {
///         Name = "ubuntu:precise",
///     });
///
///     // Start a container
///     var ubuntu = new Docker.Container("ubuntu", new()
///     {
///         Name = "foo",
///         Image = ubuntuRemoteImage.ImageId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Find the latest Ubuntu precise image.
/// 		ubuntuRemoteImage, err := docker.NewRemoteImage(ctx, "ubuntu", &docker.RemoteImageArgs{
/// 			Name: pulumi.String("ubuntu:precise"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Start a container
/// 		_, err = docker.NewContainer(ctx, "ubuntu", &docker.ContainerArgs{
/// 			Name:  pulumi.String("foo"),
/// 			Image: ubuntuRemoteImage.ImageId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// # Start a container
/// resource "docker_container" "ubuntu" {
///   name  = "foo"
///   image = docker_remoteimage.ubuntu.image_id
/// }
/// # Find the latest Ubuntu precise image.
/// resource "docker_remoteimage" "ubuntu" {
///   name = "ubuntu:precise"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.RemoteImage;
/// import com.pulumi.docker.RemoteImageArgs;
/// import com.pulumi.docker.Container;
/// import com.pulumi.docker.ContainerArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // Find the latest Ubuntu precise image.
///         var ubuntuRemoteImage = new RemoteImage("ubuntuRemoteImage", RemoteImageArgs.builder()
///             .name("ubuntu:precise")
///             .build());
///
///         // Start a container
///         var ubuntu = new Container("ubuntu", ContainerArgs.builder()
///             .name("foo")
///             .image(ubuntuRemoteImage.imageId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Start a container
///   ubuntu:
///     type: docker:Container
///     properties:
///       name: foo
///       image: ${ubuntuRemoteImage.imageId}
///   # Find the latest Ubuntu precise image.
///   ubuntuRemoteImage:
///     type: docker:RemoteImage
///     name: ubuntu
///     properties:
///       name: ubuntu:precise
/// ```
///
///
/// ## Import
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/container:Container foo id
/// ```
///
/// ### Example
///
/// Assuming you created a `container` as follows
///
/// ```sh
/// #!/bin/bash
/// docker run --name foo -p8080:80 -d nginx
/// # prints the container ID
/// 9a550c0f0163d39d77222d3efd58701b625d47676c25c686c95b5b92d1cba6fd
/// ```
///
/// you provide the definition for the resource as follows
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const foo = new docker.Container("foo", {
///     name: "foo",
///     image: "nginx",
///     ports: [{
///         internal: 80,
///         external: 8080,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// foo = docker.Container("foo",
///     name="foo",
///     image="nginx",
///     ports=[{
///         "internal": 80,
///         "external": 8080,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Docker.Container("foo", new()
///     {
///         Name = "foo",
///         Image = "nginx",
///         Ports = new[]
///         {
///             new Docker.Inputs.ContainerPortArgs
///             {
///                 Internal = 80,
///                 External = 8080,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.NewContainer(ctx, "foo", &docker.ContainerArgs{
/// 			Name:  pulumi.String("foo"),
/// 			Image: pulumi.String("nginx"),
/// 			Ports: docker.ContainerPortArray{
/// 				&docker.ContainerPortArgs{
/// 					Internal: pulumi.Int(80),
/// 					External: pulumi.Int(8080),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_container" "foo" {
///   name  = "foo"
///   image = "nginx"
///   ports {
///     internal = "80"
///     external = "8080"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Container;
/// import com.pulumi.docker.ContainerArgs;
/// import com.pulumi.docker.inputs.ContainerPortArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new Container("foo", ContainerArgs.builder()
///             .name("foo")
///             .image("nginx")
///             .ports(ContainerPortArgs.builder()
///                 .internal(80)
///                 .external(8080)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: docker:Container
///     properties:
///       name: foo
///       image: nginx
///       ports:
///         - internal: '80'
///           external: '8080'
/// ```
///
///
/// then the import command is as follows
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/container:Container foo 9a550c0f0163d39d77222d3efd58701b625d47676c25c686c95b5b92d1cba6fd
/// ```
class Container extends pulumi.CustomResource {
  /// If `true` attach to the container after its creation and waits the end of its execution. Defaults to `false`.
  late final pulumi.Output<bool?> attach;
  /// The network bridge of the container as read from its NetworkSettings.
  late final pulumi.Output<String> bridge;
  /// Add or drop certain linux capabilities.
  late final pulumi.Output<ContainerCapabilities?> capabilities;
  /// Optional parent cgroup for the container
  late final pulumi.Output<String?> cgroupParent;
  /// Cgroup namespace mode to use for the container. Possible values are: `private`, `host`.
  late final pulumi.Output<String?> cgroupnsMode;
  /// The command to use to start the container. For example, to run `/usr/bin/myprogram -f baz.conf` set the command to be `["/usr/bin/myprogram","-f","baz.conf"]`.
  late final pulumi.Output<List<String>> command;
  /// The logs of the container if its execution is done (`attach` must be disabled).
  late final pulumi.Output<String> containerLogs;
  /// The total number of milliseconds to wait for the container to reach status 'running'
  late final pulumi.Output<int?> containerReadRefreshTimeoutMilliseconds;
  /// Specify the CPU CFS scheduler period (in microseconds), which is used alongside `cpu-quota`. Is ignored if `cpus` is set.
  late final pulumi.Output<int?> cpuPeriod;
  /// Impose a CPU CFS quota on the container (in microseconds). The number of microseconds per `cpu-period` that the container is limited to before throttled. Is ignored if `cpus` is set.
  late final pulumi.Output<int?> cpuQuota;
  /// A comma-separated list or hyphen-separated range of CPUs a container can use, e.g. `0-1`.
  late final pulumi.Output<String?> cpuSet;
  /// CPU shares (relative weight) for the container.
  late final pulumi.Output<int?> cpuShares;
  /// Specify how much of the available CPU resources a container can use. e.g a value of 1.5 means the container is guaranteed at most one and a half of the CPUs. Has precedence over `cpuPeriod` and `cpuQuota`.
  late final pulumi.Output<String?> cpus;
  /// If defined will attempt to stop the container before destroying. Container will be destroyed after `n` seconds or on successful stop.
  late final pulumi.Output<int?> destroyGraceSeconds;
  /// Cgroup rules to allow access to classes of devices without binding specific device nodes.
  late final pulumi.Output<List<String>?> deviceCgroupRules;
  /// Limit read rate (bytes per second) from a device. This is the equivalent to repeating `--device-read-bps` for `docker run`.
  late final pulumi.Output<List<ContainerDeviceReadBp>?> deviceReadBps;
  /// Limit read rate (IO per second) from a device. This is the equivalent to repeating `--device-read-iops` for `docker run`.
  late final pulumi.Output<List<ContainerDeviceReadIop>?> deviceReadIops;
  /// Device requests for the container, such as CDI devices (e.g., `nvidia.com/gpu=all`) or GPU requests. This is the equivalent to using the `--device` flag for CDI devices in `docker run`.
  late final pulumi.Output<List<ContainerDeviceRequest>?> deviceRequests;
  /// Limit write rate (bytes per second) to a device. This is the equivalent to repeating `--device-write-bps` for `docker run`.
  late final pulumi.Output<List<ContainerDeviceWriteBp>?> deviceWriteBps;
  /// Limit write rate (IO per second) to a device. This is the equivalent to repeating `--device-write-iops` for `docker run`.
  late final pulumi.Output<List<ContainerDeviceWriteIop>?> deviceWriteIops;
  /// Bind traditional devices to the container (e.g., `/dev/nvidia0`). For CDI devices, use `deviceRequests` instead.
  late final pulumi.Output<List<ContainerDevice>?> devices;
  /// DNS servers to use.
  late final pulumi.Output<List<String>?> dns;
  /// DNS options used by the DNS provider(s), see `resolv.conf` documentation for valid list of options.
  late final pulumi.Output<List<String>?> dnsOpts;
  /// DNS search domains that are used when bare unqualified hostnames are used inside of the container.
  late final pulumi.Output<List<String>?> dnsSearches;
  /// Domain name of the container.
  late final pulumi.Output<String?> domainname;
  /// The command to use as the Entrypoint for the container. The Entrypoint allows you to configure a container to run as an executable. For example, to run `/usr/bin/myprogram` when starting a container, set the entrypoint to be `"/usr/bin/myprogram"]`.
  late final pulumi.Output<List<String>> entrypoints;
  /// Environment variables to set in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  late final pulumi.Output<List<String>> envs;
  /// The exit code of the container if its execution is done (`mustRun` must be disabled).
  late final pulumi.Output<int> exitCode;
  /// GPU devices to add to the container. Supported values are `all` or `device=&lt;id[,id...]&gt;`, for example `device=0,2` or `device=GPU-3a23c669-1f69-c64e-cf85-44e9b07e7a2a`.
  late final pulumi.Output<String?> gpus;
  /// Additional groups for the container user
  late final pulumi.Output<List<String>?> groupAdds;
  /// A test to perform to check that the container is healthy
  late final pulumi.Output<ContainerHealthcheck> healthcheck;
  /// Hostname of the container.
  late final pulumi.Output<String> hostname;
  /// Additional hosts to add to the container.
  late final pulumi.Output<List<ContainerHost>?> hosts;
  /// The ID of the image to back this container. The easiest way to get this value is to use the `imageId` attribute of the `docker.RemoteImage` resource as is shown in the example.
  late final pulumi.Output<String> image;
  /// Configured whether an init process should be injected for this container. If unset this will default to the `dockerd` defaults.
  late final pulumi.Output<bool> init;
  /// IPC sharing mode for the container. Possible values are: `none`, `private`, `shareable`, `container:&lt;name|id&gt;` or `host`.
  late final pulumi.Output<String> ipcMode;
  /// User-defined key/value metadata
  late final pulumi.Output<List<ContainerLabel>> labels;
  /// The logging driver to use for the container.
  late final pulumi.Output<String> logDriver;
  /// Key/value pairs to use as options for the logging driver.
  late final pulumi.Output<Map<String, String>?> logOpts;
  /// Save the container logs (`attach` must be enabled). Defaults to `false`.
  late final pulumi.Output<bool?> logs;
  /// The maximum amount of times to an attempt a restart when `restart` is set to 'on-failure'.
  late final pulumi.Output<int?> maxRetryCount;
  /// The memory limit for the container in MBs.
  late final pulumi.Output<int?> memory;
  /// The memory-resveration for the container in MBs. Defaults to 0. Allows you to specify a soft limit smaller than `memory` which is activated when Docker detects contention or low memory on the host machine. If you use `memory-reservation`, it must be set lower than `memory` for it to take precedence. Because it is a soft limit, it doesn't guarantee that the container doesn't exceed the limit.
  late final pulumi.Output<int?> memoryReservation;
  /// The total memory limit (memory + swap) for the container in MBs. This setting may compute to `-1` after `pulumi up` if the target host doesn't support memory swap, when that is the case docker will use a soft limitation.
  late final pulumi.Output<int?> memorySwap;
  /// Specification for mounts to be added to containers created as part of the service.
  late final pulumi.Output<List<ContainerMount>?> mounts;
  /// If `true`, then the Docker container will be kept running. If `false`, Terraform leaves the container alone. This attribute is also used to trigger a restart of a stopped container. If your container is stopped, Terraform will set `mustRun` to `false` and this will trigger a change. Defaults to `true`.
  late final pulumi.Output<bool?> mustRun;
  /// The name of the container.
  late final pulumi.Output<String> name;
  /// The data of the networks the container is connected to.
  late final pulumi.Output<List<ContainerNetworkData>> networkDatas;
  /// Network mode of the container. Defaults to `bridge`. If your host OS is any other OS, you need to set this value explicitly, e.g. `nat` when your container will be running on an Windows host. See https://docs.docker.com/engine/network/ for more information.
  late final pulumi.Output<String?> networkMode;
  /// The networks the container is attached to. This is the equivalent to the `--network` option of `docker run`
  late final pulumi.Output<List<ContainerNetworksAdvanced>?> networksAdvanced;
  /// The PID (Process) Namespace mode for the container. Either `container:&lt;name|id&gt;` or `host`.
  late final pulumi.Output<String?> pidMode;
  /// Platform in the format `os[/arch[/variant]]` used for image lookup and container runtime, for example `linux/amd64`.
  late final pulumi.Output<String> platform;
  /// Publish a container's port(s) to the host.
  late final pulumi.Output<List<ContainerPort>?> ports;
  /// If `true`, the container runs in privileged mode.
  late final pulumi.Output<bool?> privileged;
  /// Publish all ports of the container.
  late final pulumi.Output<bool?> publishAllPorts;
  /// If `true`, the container will be started as readonly. Defaults to `false`.
  late final pulumi.Output<bool?> readOnly;
  /// If `true`, it will remove anonymous volumes associated with the container. Defaults to `true`.
  late final pulumi.Output<bool?> removeVolumes;
  /// The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to `no`.
  late final pulumi.Output<String?> restart;
  /// If `true`, then the container will be automatically removed when it exits. Defaults to `false`.
  late final pulumi.Output<bool?> rm;
  /// Runtime to use for the container.
  late final pulumi.Output<String> runtime;
  /// List of string values to customize labels for MLS systems, such as SELinux. See https://docs.docker.com/engine/reference/run/#security-configuration.
  late final pulumi.Output<List<String>> securityOpts;
  /// Size of `/dev/shm` in MBs.
  late final pulumi.Output<int> shmSize;
  /// If `true`, then the Docker container will be started after creation. If `false`, then the container is only created. Defaults to `true`.
  late final pulumi.Output<bool?> start;
  /// If `true`, keep STDIN open even if not attached (`docker run -i`). Defaults to `false`.
  late final pulumi.Output<bool?> stdinOpen;
  /// Signal to stop a container (default `SIGTERM`).
  late final pulumi.Output<String> stopSignal;
  /// Timeout (in seconds) to stop a container.
  late final pulumi.Output<int> stopTimeout;
  /// Key/value pairs for the storage driver options, e.g. `size`: `120G`
  late final pulumi.Output<Map<String, String>?> storageOpts;
  /// A map of kernel parameters (sysctls) to set in the container.
  late final pulumi.Output<Map<String, String>?> sysctls;
  /// A map of container directories which should be replaced by `tmpfs mounts`, and their corresponding mount options.
  late final pulumi.Output<Map<String, String>?> tmpfs;
  /// If `true`, allocate a pseudo-tty (`docker run -t`). Defaults to `false`.
  late final pulumi.Output<bool?> tty;
  /// Ulimit options to add.
  late final pulumi.Output<List<ContainerUlimit>?> ulimits;
  /// Specifies files to upload to the container before starting it. Only one of `content` or `contentBase64` can be set and at least one of them has to be set.
  late final pulumi.Output<List<ContainerUpload>?> uploads;
  /// User used for run the first process. Format is `user` or `user:group` which user and group can be passed literally or by name.
  late final pulumi.Output<String?> user;
  /// Sets the usernamespace mode for the container when usernamespace remapping option is enabled.
  late final pulumi.Output<String?> usernsMode;
  /// Spec for mounting volumes in the container.
  late final pulumi.Output<List<ContainerVolume>?> volumes;
  /// If `true`, then the Docker container is waited for being healthy state after creation. This requires your container to have a healthcheck, otherwise this provider will error. If `false`, then the container health state is not checked. Defaults to `false`.
  late final pulumi.Output<bool?> wait;
  /// The timeout in seconds to wait the container to be healthy after creation. Defaults to `60`.
  late final pulumi.Output<int?> waitTimeout;
  /// The working directory for commands to run in.
  late final pulumi.Output<String?> workingDir;

  /// Creates a new [Container].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Container]. {@macro pulumi_index_container_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/container:Container',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.2.0').merge(options),
        ) {
    attach = registerOutput<bool?>('attach');
    bridge = registerOutput<String>('bridge');
    capabilities = registerOutput<ContainerCapabilities?>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cgroupParent = registerOutput<String?>('cgroupParent');
    cgroupnsMode = registerOutput<String?>('cgroupnsMode');
    command = registerOutput<List<String>>('command', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    containerLogs = registerOutput<String>('containerLogs');
    containerReadRefreshTimeoutMilliseconds = registerOutput<int?>('containerReadRefreshTimeoutMilliseconds');
    cpuPeriod = registerOutput<int?>('cpuPeriod');
    cpuQuota = registerOutput<int?>('cpuQuota');
    cpuSet = registerOutput<String?>('cpuSet');
    cpuShares = registerOutput<int?>('cpuShares');
    cpus = registerOutput<String?>('cpus');
    destroyGraceSeconds = registerOutput<int?>('destroyGraceSeconds');
    deviceCgroupRules = registerOutput<List<String>?>('deviceCgroupRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deviceReadBps = registerOutput<List<ContainerDeviceReadBp>?>('deviceReadBps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceReadBp>(guardedValue, (value) => ContainerDeviceReadBp.fromMap((value as Map).cast<String, dynamic>())); });
    deviceReadIops = registerOutput<List<ContainerDeviceReadIop>?>('deviceReadIops', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceReadIop>(guardedValue, (value) => ContainerDeviceReadIop.fromMap((value as Map).cast<String, dynamic>())); });
    deviceRequests = registerOutput<List<ContainerDeviceRequest>?>('deviceRequests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceRequest>(guardedValue, (value) => ContainerDeviceRequest.fromMap((value as Map).cast<String, dynamic>())); });
    deviceWriteBps = registerOutput<List<ContainerDeviceWriteBp>?>('deviceWriteBps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceWriteBp>(guardedValue, (value) => ContainerDeviceWriteBp.fromMap((value as Map).cast<String, dynamic>())); });
    deviceWriteIops = registerOutput<List<ContainerDeviceWriteIop>?>('deviceWriteIops', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceWriteIop>(guardedValue, (value) => ContainerDeviceWriteIop.fromMap((value as Map).cast<String, dynamic>())); });
    devices = registerOutput<List<ContainerDevice>?>('devices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDevice>(guardedValue, (value) => ContainerDevice.fromMap((value as Map).cast<String, dynamic>())); });
    dns = registerOutput<List<String>?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsOpts = registerOutput<List<String>?>('dnsOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsSearches = registerOutput<List<String>?>('dnsSearches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainname = registerOutput<String?>('domainname');
    entrypoints = registerOutput<List<String>>('entrypoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    envs = registerOutput<List<String>>('envs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    exitCode = registerOutput<int>('exitCode');
    gpus = registerOutput<String?>('gpus');
    groupAdds = registerOutput<List<String>?>('groupAdds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    healthcheck = registerOutput<ContainerHealthcheck>('healthcheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    hosts = registerOutput<List<ContainerHost>?>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerHost>(guardedValue, (value) => ContainerHost.fromMap((value as Map).cast<String, dynamic>())); });
    image = registerOutput<String>('image');
    init = registerOutput<bool>('init');
    ipcMode = registerOutput<String>('ipcMode');
    labels = registerOutput<List<ContainerLabel>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerLabel>(guardedValue, (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>())); });
    logDriver = registerOutput<String>('logDriver');
    logOpts = registerOutput<Map<String, String>?>('logOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    logs = registerOutput<bool?>('logs');
    maxRetryCount = registerOutput<int?>('maxRetryCount');
    memory = registerOutput<int?>('memory');
    memoryReservation = registerOutput<int?>('memoryReservation');
    memorySwap = registerOutput<int?>('memorySwap');
    mounts = registerOutput<List<ContainerMount>?>('mounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerMount>(guardedValue, (value) => ContainerMount.fromMap((value as Map).cast<String, dynamic>())); });
    mustRun = registerOutput<bool?>('mustRun');
    this.name = registerOutput<String>('name');
    networkDatas = registerOutput<List<ContainerNetworkData>>('networkDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworkData>(guardedValue, (value) => ContainerNetworkData.fromMap((value as Map).cast<String, dynamic>())); });
    networkMode = registerOutput<String?>('networkMode');
    networksAdvanced = registerOutput<List<ContainerNetworksAdvanced>?>('networksAdvanced', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworksAdvanced>(guardedValue, (value) => ContainerNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>())); });
    pidMode = registerOutput<String?>('pidMode');
    platform = registerOutput<String>('platform');
    ports = registerOutput<List<ContainerPort>?>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerPort>(guardedValue, (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>())); });
    privileged = registerOutput<bool?>('privileged');
    publishAllPorts = registerOutput<bool?>('publishAllPorts');
    readOnly = registerOutput<bool?>('readOnly');
    removeVolumes = registerOutput<bool?>('removeVolumes');
    restart = registerOutput<String?>('restart');
    rm = registerOutput<bool?>('rm');
    runtime = registerOutput<String>('runtime');
    securityOpts = registerOutput<List<String>>('securityOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    shmSize = registerOutput<int>('shmSize');
    start = registerOutput<bool?>('start');
    stdinOpen = registerOutput<bool?>('stdinOpen');
    stopSignal = registerOutput<String>('stopSignal');
    stopTimeout = registerOutput<int>('stopTimeout');
    storageOpts = registerOutput<Map<String, String>?>('storageOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    sysctls = registerOutput<Map<String, String>?>('sysctls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tmpfs = registerOutput<Map<String, String>?>('tmpfs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tty = registerOutput<bool?>('tty');
    ulimits = registerOutput<List<ContainerUlimit>?>('ulimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerUlimit>(guardedValue, (value) => ContainerUlimit.fromMap((value as Map).cast<String, dynamic>())); });
    uploads = registerOutput<List<ContainerUpload>?>('uploads', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerUpload>(guardedValue, (value) => ContainerUpload.fromMap((value as Map).cast<String, dynamic>())); });
    user = registerOutput<String?>('user');
    usernsMode = registerOutput<String?>('usernsMode');
    volumes = registerOutput<List<ContainerVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerVolume>(guardedValue, (value) => ContainerVolume.fromMap((value as Map).cast<String, dynamic>())); });
    wait = registerOutput<bool?>('wait');
    waitTimeout = registerOutput<int?>('waitTimeout');
    workingDir = registerOutput<String?>('workingDir');
  }

  /// Gets an existing [Container] resource's state with the given [name] and [id].
  static Container get(
    String name,
    pulumi.Input<String> id, {
    ContainerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Container._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Container._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/container:Container',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attach = registerOutput<bool?>('attach');
    bridge = registerOutput<String>('bridge');
    capabilities = registerOutput<ContainerCapabilities?>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cgroupParent = registerOutput<String?>('cgroupParent');
    cgroupnsMode = registerOutput<String?>('cgroupnsMode');
    command = registerOutput<List<String>>('command', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    containerLogs = registerOutput<String>('containerLogs');
    containerReadRefreshTimeoutMilliseconds = registerOutput<int?>('containerReadRefreshTimeoutMilliseconds');
    cpuPeriod = registerOutput<int?>('cpuPeriod');
    cpuQuota = registerOutput<int?>('cpuQuota');
    cpuSet = registerOutput<String?>('cpuSet');
    cpuShares = registerOutput<int?>('cpuShares');
    cpus = registerOutput<String?>('cpus');
    destroyGraceSeconds = registerOutput<int?>('destroyGraceSeconds');
    deviceCgroupRules = registerOutput<List<String>?>('deviceCgroupRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deviceReadBps = registerOutput<List<ContainerDeviceReadBp>?>('deviceReadBps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceReadBp>(guardedValue, (value) => ContainerDeviceReadBp.fromMap((value as Map).cast<String, dynamic>())); });
    deviceReadIops = registerOutput<List<ContainerDeviceReadIop>?>('deviceReadIops', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceReadIop>(guardedValue, (value) => ContainerDeviceReadIop.fromMap((value as Map).cast<String, dynamic>())); });
    deviceRequests = registerOutput<List<ContainerDeviceRequest>?>('deviceRequests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceRequest>(guardedValue, (value) => ContainerDeviceRequest.fromMap((value as Map).cast<String, dynamic>())); });
    deviceWriteBps = registerOutput<List<ContainerDeviceWriteBp>?>('deviceWriteBps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceWriteBp>(guardedValue, (value) => ContainerDeviceWriteBp.fromMap((value as Map).cast<String, dynamic>())); });
    deviceWriteIops = registerOutput<List<ContainerDeviceWriteIop>?>('deviceWriteIops', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceWriteIop>(guardedValue, (value) => ContainerDeviceWriteIop.fromMap((value as Map).cast<String, dynamic>())); });
    devices = registerOutput<List<ContainerDevice>?>('devices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDevice>(guardedValue, (value) => ContainerDevice.fromMap((value as Map).cast<String, dynamic>())); });
    dns = registerOutput<List<String>?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsOpts = registerOutput<List<String>?>('dnsOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsSearches = registerOutput<List<String>?>('dnsSearches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainname = registerOutput<String?>('domainname');
    entrypoints = registerOutput<List<String>>('entrypoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    envs = registerOutput<List<String>>('envs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    exitCode = registerOutput<int>('exitCode');
    gpus = registerOutput<String?>('gpus');
    groupAdds = registerOutput<List<String>?>('groupAdds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    healthcheck = registerOutput<ContainerHealthcheck>('healthcheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    hosts = registerOutput<List<ContainerHost>?>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerHost>(guardedValue, (value) => ContainerHost.fromMap((value as Map).cast<String, dynamic>())); });
    image = registerOutput<String>('image');
    init = registerOutput<bool>('init');
    ipcMode = registerOutput<String>('ipcMode');
    labels = registerOutput<List<ContainerLabel>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerLabel>(guardedValue, (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>())); });
    logDriver = registerOutput<String>('logDriver');
    logOpts = registerOutput<Map<String, String>?>('logOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    logs = registerOutput<bool?>('logs');
    maxRetryCount = registerOutput<int?>('maxRetryCount');
    memory = registerOutput<int?>('memory');
    memoryReservation = registerOutput<int?>('memoryReservation');
    memorySwap = registerOutput<int?>('memorySwap');
    mounts = registerOutput<List<ContainerMount>?>('mounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerMount>(guardedValue, (value) => ContainerMount.fromMap((value as Map).cast<String, dynamic>())); });
    mustRun = registerOutput<bool?>('mustRun');
    this.name = registerOutput<String>('name');
    networkDatas = registerOutput<List<ContainerNetworkData>>('networkDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworkData>(guardedValue, (value) => ContainerNetworkData.fromMap((value as Map).cast<String, dynamic>())); });
    networkMode = registerOutput<String?>('networkMode');
    networksAdvanced = registerOutput<List<ContainerNetworksAdvanced>?>('networksAdvanced', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworksAdvanced>(guardedValue, (value) => ContainerNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>())); });
    pidMode = registerOutput<String?>('pidMode');
    platform = registerOutput<String>('platform');
    ports = registerOutput<List<ContainerPort>?>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerPort>(guardedValue, (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>())); });
    privileged = registerOutput<bool?>('privileged');
    publishAllPorts = registerOutput<bool?>('publishAllPorts');
    readOnly = registerOutput<bool?>('readOnly');
    removeVolumes = registerOutput<bool?>('removeVolumes');
    restart = registerOutput<String?>('restart');
    rm = registerOutput<bool?>('rm');
    runtime = registerOutput<String>('runtime');
    securityOpts = registerOutput<List<String>>('securityOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    shmSize = registerOutput<int>('shmSize');
    start = registerOutput<bool?>('start');
    stdinOpen = registerOutput<bool?>('stdinOpen');
    stopSignal = registerOutput<String>('stopSignal');
    stopTimeout = registerOutput<int>('stopTimeout');
    storageOpts = registerOutput<Map<String, String>?>('storageOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    sysctls = registerOutput<Map<String, String>?>('sysctls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tmpfs = registerOutput<Map<String, String>?>('tmpfs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tty = registerOutput<bool?>('tty');
    ulimits = registerOutput<List<ContainerUlimit>?>('ulimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerUlimit>(guardedValue, (value) => ContainerUlimit.fromMap((value as Map).cast<String, dynamic>())); });
    uploads = registerOutput<List<ContainerUpload>?>('uploads', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerUpload>(guardedValue, (value) => ContainerUpload.fromMap((value as Map).cast<String, dynamic>())); });
    user = registerOutput<String?>('user');
    usernsMode = registerOutput<String?>('usernsMode');
    volumes = registerOutput<List<ContainerVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerVolume>(guardedValue, (value) => ContainerVolume.fromMap((value as Map).cast<String, dynamic>())); });
    wait = registerOutput<bool?>('wait');
    waitTimeout = registerOutput<int?>('waitTimeout');
    workingDir = registerOutput<String?>('workingDir');
  }

  /// Creates a typed reference to an existing [Container] resource.
  Container.reference(String urn)
    : super(
        'docker:index/container:Container',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attach = registerOutput<bool?>('attach');
    bridge = registerOutput<String>('bridge');
    capabilities = registerOutput<ContainerCapabilities?>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cgroupParent = registerOutput<String?>('cgroupParent');
    cgroupnsMode = registerOutput<String?>('cgroupnsMode');
    command = registerOutput<List<String>>('command', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    containerLogs = registerOutput<String>('containerLogs');
    containerReadRefreshTimeoutMilliseconds = registerOutput<int?>('containerReadRefreshTimeoutMilliseconds');
    cpuPeriod = registerOutput<int?>('cpuPeriod');
    cpuQuota = registerOutput<int?>('cpuQuota');
    cpuSet = registerOutput<String?>('cpuSet');
    cpuShares = registerOutput<int?>('cpuShares');
    cpus = registerOutput<String?>('cpus');
    destroyGraceSeconds = registerOutput<int?>('destroyGraceSeconds');
    deviceCgroupRules = registerOutput<List<String>?>('deviceCgroupRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deviceReadBps = registerOutput<List<ContainerDeviceReadBp>?>('deviceReadBps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceReadBp>(guardedValue, (value) => ContainerDeviceReadBp.fromMap((value as Map).cast<String, dynamic>())); });
    deviceReadIops = registerOutput<List<ContainerDeviceReadIop>?>('deviceReadIops', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceReadIop>(guardedValue, (value) => ContainerDeviceReadIop.fromMap((value as Map).cast<String, dynamic>())); });
    deviceRequests = registerOutput<List<ContainerDeviceRequest>?>('deviceRequests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceRequest>(guardedValue, (value) => ContainerDeviceRequest.fromMap((value as Map).cast<String, dynamic>())); });
    deviceWriteBps = registerOutput<List<ContainerDeviceWriteBp>?>('deviceWriteBps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceWriteBp>(guardedValue, (value) => ContainerDeviceWriteBp.fromMap((value as Map).cast<String, dynamic>())); });
    deviceWriteIops = registerOutput<List<ContainerDeviceWriteIop>?>('deviceWriteIops', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDeviceWriteIop>(guardedValue, (value) => ContainerDeviceWriteIop.fromMap((value as Map).cast<String, dynamic>())); });
    devices = registerOutput<List<ContainerDevice>?>('devices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerDevice>(guardedValue, (value) => ContainerDevice.fromMap((value as Map).cast<String, dynamic>())); });
    dns = registerOutput<List<String>?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsOpts = registerOutput<List<String>?>('dnsOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsSearches = registerOutput<List<String>?>('dnsSearches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainname = registerOutput<String?>('domainname');
    entrypoints = registerOutput<List<String>>('entrypoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    envs = registerOutput<List<String>>('envs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    exitCode = registerOutput<int>('exitCode');
    gpus = registerOutput<String?>('gpus');
    groupAdds = registerOutput<List<String>?>('groupAdds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    healthcheck = registerOutput<ContainerHealthcheck>('healthcheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    hosts = registerOutput<List<ContainerHost>?>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerHost>(guardedValue, (value) => ContainerHost.fromMap((value as Map).cast<String, dynamic>())); });
    image = registerOutput<String>('image');
    init = registerOutput<bool>('init');
    ipcMode = registerOutput<String>('ipcMode');
    labels = registerOutput<List<ContainerLabel>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerLabel>(guardedValue, (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>())); });
    logDriver = registerOutput<String>('logDriver');
    logOpts = registerOutput<Map<String, String>?>('logOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    logs = registerOutput<bool?>('logs');
    maxRetryCount = registerOutput<int?>('maxRetryCount');
    memory = registerOutput<int?>('memory');
    memoryReservation = registerOutput<int?>('memoryReservation');
    memorySwap = registerOutput<int?>('memorySwap');
    mounts = registerOutput<List<ContainerMount>?>('mounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerMount>(guardedValue, (value) => ContainerMount.fromMap((value as Map).cast<String, dynamic>())); });
    mustRun = registerOutput<bool?>('mustRun');
    this.name = registerOutput<String>('name');
    networkDatas = registerOutput<List<ContainerNetworkData>>('networkDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworkData>(guardedValue, (value) => ContainerNetworkData.fromMap((value as Map).cast<String, dynamic>())); });
    networkMode = registerOutput<String?>('networkMode');
    networksAdvanced = registerOutput<List<ContainerNetworksAdvanced>?>('networksAdvanced', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerNetworksAdvanced>(guardedValue, (value) => ContainerNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>())); });
    pidMode = registerOutput<String?>('pidMode');
    platform = registerOutput<String>('platform');
    ports = registerOutput<List<ContainerPort>?>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerPort>(guardedValue, (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>())); });
    privileged = registerOutput<bool?>('privileged');
    publishAllPorts = registerOutput<bool?>('publishAllPorts');
    readOnly = registerOutput<bool?>('readOnly');
    removeVolumes = registerOutput<bool?>('removeVolumes');
    restart = registerOutput<String?>('restart');
    rm = registerOutput<bool?>('rm');
    runtime = registerOutput<String>('runtime');
    securityOpts = registerOutput<List<String>>('securityOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    shmSize = registerOutput<int>('shmSize');
    start = registerOutput<bool?>('start');
    stdinOpen = registerOutput<bool?>('stdinOpen');
    stopSignal = registerOutput<String>('stopSignal');
    stopTimeout = registerOutput<int>('stopTimeout');
    storageOpts = registerOutput<Map<String, String>?>('storageOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    sysctls = registerOutput<Map<String, String>?>('sysctls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tmpfs = registerOutput<Map<String, String>?>('tmpfs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tty = registerOutput<bool?>('tty');
    ulimits = registerOutput<List<ContainerUlimit>?>('ulimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerUlimit>(guardedValue, (value) => ContainerUlimit.fromMap((value as Map).cast<String, dynamic>())); });
    uploads = registerOutput<List<ContainerUpload>?>('uploads', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerUpload>(guardedValue, (value) => ContainerUpload.fromMap((value as Map).cast<String, dynamic>())); });
    user = registerOutput<String?>('user');
    usernsMode = registerOutput<String?>('usernsMode');
    volumes = registerOutput<List<ContainerVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerVolume>(guardedValue, (value) => ContainerVolume.fromMap((value as Map).cast<String, dynamic>())); });
    wait = registerOutput<bool?>('wait');
    waitTimeout = registerOutput<int?>('waitTimeout');
    workingDir = registerOutput<String?>('workingDir');
  }
}

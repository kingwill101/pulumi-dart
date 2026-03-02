// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_container_spec_config.dart';
import 'service_task_spec_container_spec_dns_config.dart';
import 'service_task_spec_container_spec_healthcheck.dart';
import 'service_task_spec_container_spec_host.dart';
import 'service_task_spec_container_spec_label.dart';
import 'service_task_spec_container_spec_mount.dart';
import 'service_task_spec_container_spec_privileges.dart';
import 'service_task_spec_container_spec_secret.dart';

class ServiceTaskSpecContainerSpec {
  /// Arguments to the command
  final pulumi.Input<List<String>>? args;
  /// List of Linux capabilities to add to the container
  final pulumi.Input<List<String>>? capAdds;
  /// List of Linux capabilities to drop from the container
  final pulumi.Input<List<String>>? capDrops;
  /// The command/entrypoint to be run in the image. According to the [docker cli](https://github.com/docker/cli/blob/v20.10.7/cli/command/service/opts.go#L705) the override of the entrypoint is also passed to the `command` property and there is no `entrypoint` attribute in the `ContainerSpec` of the service.
  final pulumi.Input<List<String>>? commands;
  /// References to zero or more configs that will be exposed to the service
  final pulumi.Input<List<ServiceTaskSpecContainerSpecConfig>>? configs;
  /// The working directory for commands to run in
  final pulumi.Input<String>? dir;
  /// Specification for DNS related configurations in resolver configuration file (`resolv.conf`)
  final pulumi.Input<ServiceTaskSpecContainerSpecDnsConfig>? dnsConfig;
  /// A list of environment variables in the form VAR="value"
  final pulumi.Input<Map<String, String>>? env;
  /// A list of additional groups that the container process will run as
  final pulumi.Input<List<String>>? groups;
  /// A test to perform to check that the container is healthy. It works in the same way, and has the same default values, as the HEALTHCHECK Dockerfile instruction set by the service's Docker image. Your Compose file can override the values set in the Dockerfile.
  final pulumi.Input<ServiceTaskSpecContainerSpecHealthcheck>? healthcheck;
  /// The hostname to use for the container, as a valid RFC 1123 hostname
  final pulumi.Input<String>? hostname;
  /// A list of hostname/IP mappings to add to the container's hosts file
  final pulumi.Input<List<ServiceTaskSpecContainerSpecHost>>? hosts;
  /// The image name to use for the containers of the service, like `nginx:1.17.6`. Also use the data-source or resource of `docker.RemoteImage` with the `repo_digest` or `docker.RegistryImage` with the `name` attribute for this, as shown in the examples.
  final pulumi.Input<String> image;
  /// Isolation technology of the containers running the service. (Windows only). Defaults to `default`.
  final pulumi.Input<String>? isolation;
  /// User-defined key/value metadata
  final pulumi.Input<List<ServiceTaskSpecContainerSpecLabel>>? labels;
  /// Specification for mounts to be added to containers created as part of the service
  final pulumi.Input<List<ServiceTaskSpecContainerSpecMount>>? mounts;
  /// Security options for the container
  final pulumi.Input<ServiceTaskSpecContainerSpecPrivileges>? privileges;
  /// Mount the container's root filesystem as read only
  final pulumi.Input<bool>? readOnly;
  /// References to zero or more secrets that will be exposed to the service
  final pulumi.Input<List<ServiceTaskSpecContainerSpecSecret>>? secrets;
  /// Amount of time to wait for the container to terminate before forcefully removing it (ms|s|m|h). If not specified or '0s' the destroy will not check if all tasks/containers of the service terminate.
  final pulumi.Input<String>? stopGracePeriod;
  /// Signal to stop the container
  final pulumi.Input<String>? stopSignal;
  /// Sysctls config (Linux only)
  final pulumi.Input<Map<String, String>>? sysctl;
  /// The user inside the container
  final pulumi.Input<String>? user;

  /// Creates a new [ServiceTaskSpecContainerSpec].
  /// [args] Arguments to the command
  /// [capAdds] List of Linux capabilities to add to the container
  /// [capDrops] List of Linux capabilities to drop from the container
  /// [commands] The command/entrypoint to be run in the image. According to the [docker cli](https://github.com/docker/cli/blob/v20.10.7/cli/command/service/opts.go#L705) the override of the entrypoint is also passed to the `command` property and there is no `entrypoint` attribute in the `ContainerSpec` of the service.
  /// [configs] References to zero or more configs that will be exposed to the service
  /// [dir] The working directory for commands to run in
  /// [dnsConfig] Specification for DNS related configurations in resolver configuration file (`resolv.conf`)
  /// [env] A list of environment variables in the form VAR="value"
  /// [groups] A list of additional groups that the container process will run as
  /// [healthcheck] A test to perform to check that the container is healthy. It works in the same way, and has the same default values, as the HEALTHCHECK Dockerfile instruction set by the service's Docker image. Your Compose file can override the values set in the Dockerfile.
  /// [hostname] The hostname to use for the container, as a valid RFC 1123 hostname
  /// [hosts] A list of hostname/IP mappings to add to the container's hosts file
  /// [image] The image name to use for the containers of the service, like `nginx:1.17.6`. Also use the data-source or resource of `docker.RemoteImage` with the `repo_digest` or `docker.RegistryImage` with the `name` attribute for this, as shown in the examples.
  /// [isolation] Isolation technology of the containers running the service. (Windows only). Defaults to `default`.
  /// [labels] User-defined key/value metadata
  /// [mounts] Specification for mounts to be added to containers created as part of the service
  /// [privileges] Security options for the container
  /// [readOnly] Mount the container's root filesystem as read only
  /// [secrets] References to zero or more secrets that will be exposed to the service
  /// [stopGracePeriod] Amount of time to wait for the container to terminate before forcefully removing it (ms|s|m|h). If not specified or '0s' the destroy will not check if all tasks/containers of the service terminate.
  /// [stopSignal] Signal to stop the container
  /// [sysctl] Sysctls config (Linux only)
  /// [user] The user inside the container
  ServiceTaskSpecContainerSpec({
    this.args,
    this.capAdds,
    this.capDrops,
    this.commands,
    this.configs,
    this.dir,
    this.dnsConfig,
    this.env,
    this.groups,
    this.healthcheck,
    this.hostname,
    this.hosts,
    required this.image,
    this.isolation,
    this.labels,
    this.mounts,
    this.privileges,
    this.readOnly,
    this.secrets,
    this.stopGracePeriod,
    this.stopSignal,
    this.sysctl,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'capAdds': ?capAdds,
      'capDrops': ?capDrops,
      'commands': ?commands,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecContainerSpecConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<ServiceTaskSpecContainerSpecConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dir': ?dir,
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecContainerSpecDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'env': ?env,
      'groups': ?groups,
      'healthcheck': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecContainerSpecHealthcheck, Map<String, dynamic>>(healthcheck, (value) => value.toMap()),
      'hostname': ?hostname,
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecContainerSpecHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<ServiceTaskSpecContainerSpecHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'isolation': ?isolation,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecContainerSpecLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ServiceTaskSpecContainerSpecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecContainerSpecMount>, List<Map<String, dynamic>>>(mounts, (value) => pulumi.Input.encodeList<ServiceTaskSpecContainerSpecMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileges': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecContainerSpecPrivileges, Map<String, dynamic>>(privileges, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecContainerSpecSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<ServiceTaskSpecContainerSpecSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stopGracePeriod': ?stopGracePeriod,
      'stopSignal': ?stopSignal,
      'sysctl': ?sysctl,
      'user': ?user,
    };
  }

  factory ServiceTaskSpecContainerSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpec(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      capAdds: map['capAdds'] == null ? null : ((map['capAdds']! as List).cast<String>()).input(),
      capDrops: map['capDrops'] == null ? null : ((map['capDrops']! as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      configs: map['configs'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecContainerSpecConfig>(map['configs']!, (value) => ServiceTaskSpecContainerSpecConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dir: map['dir'] == null ? null : (map['dir']! as String).input(),
      dnsConfig: map['dnsConfig'] == null ? null : (ServiceTaskSpecContainerSpecDnsConfig.fromMap((map['dnsConfig']! as Map).cast<String, dynamic>())).input(),
      env: map['env'] == null ? null : ((map['env']! as Map).cast<String, String>()).input(),
      groups: map['groups'] == null ? null : ((map['groups']! as List).cast<String>()).input(),
      healthcheck: map['healthcheck'] == null ? null : (ServiceTaskSpecContainerSpecHealthcheck.fromMap((map['healthcheck']! as Map).cast<String, dynamic>())).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecContainerSpecHost>(map['hosts']!, (value) => ServiceTaskSpecContainerSpecHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      isolation: map['isolation'] == null ? null : (map['isolation']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecContainerSpecLabel>(map['labels']!, (value) => ServiceTaskSpecContainerSpecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mounts: map['mounts'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecContainerSpecMount>(map['mounts']!, (value) => ServiceTaskSpecContainerSpecMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privileges: map['privileges'] == null ? null : (ServiceTaskSpecContainerSpecPrivileges.fromMap((map['privileges']! as Map).cast<String, dynamic>())).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecContainerSpecSecret>(map['secrets']!, (value) => ServiceTaskSpecContainerSpecSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stopGracePeriod: map['stopGracePeriod'] == null ? null : (map['stopGracePeriod']! as String).input(),
      stopSignal: map['stopSignal'] == null ? null : (map['stopSignal']! as String).input(),
      sysctl: map['sysctl'] == null ? null : ((map['sysctl']! as Map).cast<String, String>()).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}


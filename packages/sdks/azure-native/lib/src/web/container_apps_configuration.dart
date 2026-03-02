// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerAppsConfiguration {
  /// Resource ID of a subnet for control plane infrastructure components. This subnet must be in the same VNET as the subnet defined in appSubnetResourceId. Must not overlap with the IP range defined in platformReservedCidr, if defined.
  final pulumi.Input<String>? appSubnetResourceId;
  /// Resource ID of a subnet for control plane infrastructure components. This subnet must be in the same VNET as the subnet defined in appSubnetResourceId. Must not overlap with the IP range defined in platformReservedCidr, if defined.
  final pulumi.Input<String>? controlPlaneSubnetResourceId;
  /// Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  final pulumi.Input<String>? daprAIInstrumentationKey;
  /// CIDR notation IP range assigned to the Docker bridge network. It must not overlap with any Subnet IP ranges or the IP range defined in platformReservedCidr, if defined.
  final pulumi.Input<String>? dockerBridgeCidr;
  /// IP range in CIDR notation that can be reserved for environment infrastructure IP addresses. It must not overlap with any other Subnet IP ranges.
  final pulumi.Input<String>? platformReservedCidr;
  /// An IP address from the IP range defined by platformReservedCidr that will be reserved for the internal DNS server
  final pulumi.Input<String>? platformReservedDnsIP;

  /// Creates a new [ContainerAppsConfiguration].
  /// [appSubnetResourceId] Resource ID of a subnet for control plane infrastructure components. This subnet must be in the same VNET as the subnet defined in appSubnetResourceId. Must not overlap with the IP range defined in platformReservedCidr, if defined.
  /// [controlPlaneSubnetResourceId] Resource ID of a subnet for control plane infrastructure components. This subnet must be in the same VNET as the subnet defined in appSubnetResourceId. Must not overlap with the IP range defined in platformReservedCidr, if defined.
  /// [daprAIInstrumentationKey] Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  /// [dockerBridgeCidr] CIDR notation IP range assigned to the Docker bridge network. It must not overlap with any Subnet IP ranges or the IP range defined in platformReservedCidr, if defined.
  /// [platformReservedCidr] IP range in CIDR notation that can be reserved for environment infrastructure IP addresses. It must not overlap with any other Subnet IP ranges.
  /// [platformReservedDnsIP] An IP address from the IP range defined by platformReservedCidr that will be reserved for the internal DNS server
  ContainerAppsConfiguration({
    this.appSubnetResourceId,
    this.controlPlaneSubnetResourceId,
    this.daprAIInstrumentationKey,
    this.dockerBridgeCidr,
    this.platformReservedCidr,
    this.platformReservedDnsIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSubnetResourceId': ?appSubnetResourceId,
      'controlPlaneSubnetResourceId': ?controlPlaneSubnetResourceId,
      'daprAIInstrumentationKey': ?daprAIInstrumentationKey,
      'dockerBridgeCidr': ?dockerBridgeCidr,
      'platformReservedCidr': ?platformReservedCidr,
      'platformReservedDnsIP': ?platformReservedDnsIP,
    };
  }

  factory ContainerAppsConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerAppsConfiguration(
      appSubnetResourceId: map['appSubnetResourceId'] == null ? null : (map['appSubnetResourceId']! as String).input(),
      controlPlaneSubnetResourceId: map['controlPlaneSubnetResourceId'] == null ? null : (map['controlPlaneSubnetResourceId']! as String).input(),
      daprAIInstrumentationKey: map['daprAIInstrumentationKey'] == null ? null : (map['daprAIInstrumentationKey']! as String).input(),
      dockerBridgeCidr: map['dockerBridgeCidr'] == null ? null : (map['dockerBridgeCidr']! as String).input(),
      platformReservedCidr: map['platformReservedCidr'] == null ? null : (map['platformReservedCidr']! as String).input(),
      platformReservedDnsIP: map['platformReservedDnsIP'] == null ? null : (map['platformReservedDnsIP']! as String).input(),
    );
  }
}


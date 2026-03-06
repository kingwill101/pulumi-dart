// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer {
  /// A list of Backend Pool names for the Load Balancer. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? backendPoolNames;
  /// A list of Frontend IP Configuration names. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? frontendIpConfigurationNames;
  /// A list of Health Probe names. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? healthProbeNames;
  /// The full resource name of the Load Balancer. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer].
  /// [backendPoolNames] A list of Backend Pool names for the Load Balancer. Changing this forces a new resource to be created.
  /// [frontendIpConfigurationNames] A list of Frontend IP Configuration names. Changing this forces a new resource to be created.
  /// [healthProbeNames] A list of Health Probe names. Changing this forces a new resource to be created.
  /// [name] The full resource name of the Load Balancer. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer({
    this.backendPoolNames,
    this.frontendIpConfigurationNames,
    this.healthProbeNames,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolNames': ?backendPoolNames,
      'frontendIpConfigurationNames': ?frontendIpConfigurationNames,
      'healthProbeNames': ?healthProbeNames,
      'name': ?name,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer(
      backendPoolNames: (() { final guardedValue = map['backendPoolNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      frontendIpConfigurationNames: (() { final guardedValue = map['frontendIpConfigurationNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      healthProbeNames: (() { final guardedValue = map['healthProbeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


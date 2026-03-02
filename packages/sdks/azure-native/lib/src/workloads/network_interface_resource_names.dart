// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource names object for network interface and related resources.
class NetworkInterfaceResourceNames {
  /// The full name for network interface. If name is not provided, service uses a default name based on the deployment type. For SingleServer, default name is {SID}-Nic. In case of HA-AvZone systems, default name will be {SID}-{App/ASCS/DB}-Zone{A/B}-Nic with an incrementor at the end in case of more than 1 instance per layer. For distributed and HA-AvSet systems, default name will be {SID}-{App/ASCS/DB}-Nic with an incrementor at the end in case of more than 1 instance per layer.
  final pulumi.Input<String>? networkInterfaceName;

  /// Creates a new [NetworkInterfaceResourceNames].
  /// [networkInterfaceName] The full name for network interface. If name is not provided, service uses a default name based on the deployment type. For SingleServer, default name is {SID}-Nic. In case of HA-AvZone systems, default name will be {SID}-{App/ASCS/DB}-Zone{A/B}-Nic with an incrementor at the end in case of more than 1 instance per layer. For distributed and HA-AvSet systems, default name will be {SID}-{App/ASCS/DB}-Nic with an incrementor at the end in case of more than 1 instance per layer.
  NetworkInterfaceResourceNames({
    this.networkInterfaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceName': ?networkInterfaceName,
    };
  }

  factory NetworkInterfaceResourceNames.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResourceNames(
      networkInterfaceName: map['networkInterfaceName'] == null ? null : (map['networkInterfaceName']! as String).input(),
    );
  }
}


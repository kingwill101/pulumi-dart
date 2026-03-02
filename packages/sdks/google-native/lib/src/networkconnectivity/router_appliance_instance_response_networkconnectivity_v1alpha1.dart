// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RouterAppliance represents a Router appliance which is specified by a VM URI and a NIC address.
class RouterApplianceInstanceResponseNetworkconnectivityV1alpha1 {
  /// The IP address of the network interface to use for peering.
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> networkInterface;
  /// The URI of the virtual machine resource
  final pulumi.Input<String> virtualMachine;

  /// Creates a new [RouterApplianceInstanceResponseNetworkconnectivityV1alpha1].
  /// [ipAddress] The IP address of the network interface to use for peering.
  /// [networkInterface] Required.
  /// [virtualMachine] The URI of the virtual machine resource
  RouterApplianceInstanceResponseNetworkconnectivityV1alpha1({
    required this.ipAddress,
    required this.networkInterface,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'networkInterface': networkInterface,
      'virtualMachine': virtualMachine,
    };
  }

  factory RouterApplianceInstanceResponseNetworkconnectivityV1alpha1.fromMap(Map<String, dynamic> map) {
    return RouterApplianceInstanceResponseNetworkconnectivityV1alpha1(
      ipAddress: (map['ipAddress'] as String).input(),
      networkInterface: (map['networkInterface'] as String).input(),
      virtualMachine: (map['virtualMachine'] as String).input(),
    );
  }
}


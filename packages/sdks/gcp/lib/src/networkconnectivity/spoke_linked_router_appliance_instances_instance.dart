// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpokeLinkedRouterApplianceInstancesInstance {
  /// The IP address on the VM to use for peering.
  final pulumi.Input<String> ipAddress;
  /// The URI of the virtual machine resource
  final pulumi.Input<String> virtualMachine;

  /// Creates a new [SpokeLinkedRouterApplianceInstancesInstance].
  /// [ipAddress] The IP address on the VM to use for peering.
  /// [virtualMachine] The URI of the virtual machine resource
  const SpokeLinkedRouterApplianceInstancesInstance({
    required this.ipAddress,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'virtualMachine': virtualMachine,
    };
  }

  factory SpokeLinkedRouterApplianceInstancesInstance.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedRouterApplianceInstancesInstance(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      virtualMachine: pulumi.Input.fromValue(map['virtualMachine'] as String),
    );
  }
}


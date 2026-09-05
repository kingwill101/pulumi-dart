// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineInboundNatRule {
  /// The Backend Port associated with this NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<int> backendPort;
  /// The frontend port associated with this Inbound NAT Rule.
  final pulumi.Input<int?>? frontendPort;
  /// The Protocol used for this NAT Rule. Possible values are `Tcp` and `Udp`.
  final pulumi.Input<String> protocol;

  /// Creates a new [LinuxVirtualMachineInboundNatRule].
  /// [backendPort] The Backend Port associated with this NAT Rule. Changing this forces a new resource to be created.
  /// [frontendPort] The frontend port associated with this Inbound NAT Rule.
  /// [protocol] The Protocol used for this NAT Rule. Possible values are `Tcp` and `Udp`.
  const LinuxVirtualMachineInboundNatRule({
    required this.backendPort,
    this.frontendPort,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': ?frontendPort,
      'protocol': protocol,
    };
  }

  factory LinuxVirtualMachineInboundNatRule.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineInboundNatRule(
      backendPort: pulumi.Input.fromValue((map['backendPort'] as num).toInt()),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

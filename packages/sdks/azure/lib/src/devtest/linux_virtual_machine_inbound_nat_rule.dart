// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineInboundNatRule {
  /// The Backend Port associated with this NAT Rule. Changing this forces a new resource to be created.
  final int backendPort;
  /// The frontend port associated with this Inbound NAT Rule.
  final int? frontendPort;
  /// The Protocol used for this NAT Rule. Possible values are `Tcp` and `Udp`.
  final String protocol;

  /// Creates a new [LinuxVirtualMachineInboundNatRule].
  /// [backendPort] The Backend Port associated with this NAT Rule. Changing this forces a new resource to be created.
  /// [frontendPort] The frontend port associated with this Inbound NAT Rule.
  /// [protocol] The Protocol used for this NAT Rule. Possible values are `Tcp` and `Udp`.
  LinuxVirtualMachineInboundNatRule({
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
      backendPort: map['backendPort'] as int,
      frontendPort: map['frontendPort'] == null ? null : map['frontendPort'] as int,
      protocol: map['protocol'] as String,
    );
  }
}


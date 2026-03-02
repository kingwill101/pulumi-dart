// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualAddress resources.
class VirtualAddressState {
  /// Enabled dynamic routing of the address ( In versions prior to BIG-IP 13.0.0 HF1, you can configure the Route Advertisement option for a virtual address to be either Enabled or Disabled only. Beginning with BIG-IP 13.0.0 HF1, F5 added more settings for the Route Advertisement option. In addition, the Enabled setting is deprecated and replaced by the Selective setting. For more information, please look into KB article https://support.f5.com/csp/article/K85543242 )
  final pulumi.Input<String>? advertizeRoute;
  /// Enable or disable ARP for the virtual address
  final pulumi.Input<bool>? arp;
  /// Automatically delete the virtual address with the virtual server
  final pulumi.Input<bool>? autoDelete;
  /// Max number of connections for virtual address
  final pulumi.Input<int>? connLimit;
  /// Enable or disable the virtual address
  final pulumi.Input<bool>? enabled;
  /// Specifies how the system sends responses to ICMP echo requests on a per-virtual address basis.
  final pulumi.Input<String>? icmpEcho;
  /// Name of the virtual address
  final pulumi.Input<String>? name;
  /// Specify the partition and traffic group
  final pulumi.Input<String>? trafficGroup;

  /// Creates a new [VirtualAddressState].
  /// [advertizeRoute] Enabled dynamic routing of the address ( In versions prior to BIG-IP 13.0.0 HF1, you can configure the Route Advertisement option for a virtual address to be either Enabled or Disabled only. Beginning with BIG-IP 13.0.0 HF1, F5 added more settings for the Route Advertisement option. In addition, the Enabled setting is deprecated and replaced by the Selective setting. For more information, please look into KB article https://support.f5.com/csp/article/K85543242 )
  /// [arp] Enable or disable ARP for the virtual address
  /// [autoDelete] Automatically delete the virtual address with the virtual server
  /// [connLimit] Max number of connections for virtual address
  /// [enabled] Enable or disable the virtual address
  /// [icmpEcho] Specifies how the system sends responses to ICMP echo requests on a per-virtual address basis.
  /// [name] Name of the virtual address
  /// [trafficGroup] Specify the partition and traffic group
  VirtualAddressState({
    this.advertizeRoute,
    this.arp,
    this.autoDelete,
    this.connLimit,
    this.enabled,
    this.icmpEcho,
    this.name,
    this.trafficGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertizeRoute': ?advertizeRoute,
      'arp': ?arp,
      'autoDelete': ?autoDelete,
      'connLimit': ?connLimit,
      'enabled': ?enabled,
      'icmpEcho': ?icmpEcho,
      'name': ?name,
      'trafficGroup': ?trafficGroup,
    };
  }

  factory VirtualAddressState.fromMap(Map<String, dynamic> map) {
    return VirtualAddressState(
      advertizeRoute: map['advertizeRoute'] == null ? null : (map['advertizeRoute']! as String).input(),
      arp: map['arp'] == null ? null : (map['arp']! as bool).input(),
      autoDelete: map['autoDelete'] == null ? null : (map['autoDelete']! as bool).input(),
      connLimit: map['connLimit'] == null ? null : (map['connLimit']! as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      icmpEcho: map['icmpEcho'] == null ? null : (map['icmpEcho']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      trafficGroup: map['trafficGroup'] == null ? null : (map['trafficGroup']! as String).input(),
    );
  }
}


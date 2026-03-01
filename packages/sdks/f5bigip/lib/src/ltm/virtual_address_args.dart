// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_virtual_address_virtual_address_args_doc}
/// The set of arguments for VirtualAddress.
/// {@endtemplate}
/// {@macro pulumi_ltm_virtual_address_virtual_address_args_doc}
class VirtualAddressArgs {
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
  final pulumi.Input<String> name;
  /// Specify the partition and traffic group
  final pulumi.Input<String>? trafficGroup;

  /// Creates a new [VirtualAddressArgs].
  /// [advertizeRoute] Enabled dynamic routing of the address ( In versions prior to BIG-IP 13.0.0 HF1, you can configure the Route Advertisement option for a virtual address to be either Enabled or Disabled only. Beginning with BIG-IP 13.0.0 HF1, F5 added more settings for the Route Advertisement option. In addition, the Enabled setting is deprecated and replaced by the Selective setting. For more information, please look into KB article https://support.f5.com/csp/article/K85543242 )
  /// [arp] Enable or disable ARP for the virtual address
  /// [autoDelete] Automatically delete the virtual address with the virtual server
  /// [connLimit] Max number of connections for virtual address
  /// [enabled] Enable or disable the virtual address
  /// [icmpEcho] Specifies how the system sends responses to ICMP echo requests on a per-virtual address basis.
  /// [name] Name of the virtual address
  /// [trafficGroup] Specify the partition and traffic group
  VirtualAddressArgs({
    pulumi.Output<String>? advertizeRoute,
    pulumi.Output<bool>? arp,
    pulumi.Output<bool>? autoDelete,
    pulumi.Output<int>? connLimit,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? icmpEcho,
    required pulumi.Output<String> name,
    pulumi.Output<String>? trafficGroup,
  }) :
      advertizeRoute = pulumi.Input.asOptionalInput<String>(advertizeRoute),
      arp = pulumi.Input.asOptionalInput<bool>(arp),
      autoDelete = pulumi.Input.asOptionalInput<bool>(autoDelete),
      connLimit = pulumi.Input.asOptionalInput<int>(connLimit),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      icmpEcho = pulumi.Input.asOptionalInput<String>(icmpEcho),
      name = pulumi.Input.asInput<String>(name),
      trafficGroup = pulumi.Input.asOptionalInput<String>(trafficGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertizeRoute': ?advertizeRoute,
      'arp': ?arp,
      'autoDelete': ?autoDelete,
      'connLimit': ?connLimit,
      'enabled': ?enabled,
      'icmpEcho': ?icmpEcho,
      'name': name,
      'trafficGroup': ?trafficGroup,
    };
  }

  factory VirtualAddressArgs.fromMap(Map<String, dynamic> map) {
    return VirtualAddressArgs(
      advertizeRoute: map['advertizeRoute'] == null ? null : pulumi.Output.create<String>(map['advertizeRoute'] as String),
      arp: map['arp'] == null ? null : pulumi.Output.create<bool>(map['arp'] as bool),
      autoDelete: map['autoDelete'] == null ? null : pulumi.Output.create<bool>(map['autoDelete'] as bool),
      connLimit: map['connLimit'] == null ? null : pulumi.Output.create<int>(map['connLimit'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      icmpEcho: map['icmpEcho'] == null ? null : pulumi.Output.create<String>(map['icmpEcho'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      trafficGroup: map['trafficGroup'] == null ? null : pulumi.Output.create<String>(map['trafficGroup'] as String),
    );
  }
}


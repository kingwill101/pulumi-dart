// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_default_route.dart';
import 'interface_public.dart';
import 'interface_vlan.dart';
import 'interface_vpc.dart';

/// {@template pulumi_index_interface_interface_args_doc}
/// The set of arguments for Interface.
/// {@endtemplate}
/// {@macro pulumi_index_interface_interface_args_doc}
class InterfaceArgs {
  /// Indicates if the interface serves as the default route when multiple interfaces are eligible for this role.
  final pulumi.Input<InterfaceDefaultRoute>? defaultRoute;
  /// The ID of an enabled firewall to secure a VPC or public interface. Not allowed for VLAN interfaces.
  final pulumi.Input<int>? firewallId;
  /// The ID of the Linode to assign this interface to.
  final pulumi.Input<int> linodeId;
  /// Nested attributes object for a Linode public interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  final pulumi.Input<InterfacePublic>? public;
  /// Nested attributes object for a Linode VLAN interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  final pulumi.Input<InterfaceVlan>? vlan;
  /// Nested attributes object for a Linode VPC interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  final pulumi.Input<InterfaceVpc>? vpc;

  /// Creates a new [InterfaceArgs].
  /// [defaultRoute] Indicates if the interface serves as the default route when multiple interfaces are eligible for this role.
  /// [firewallId] The ID of an enabled firewall to secure a VPC or public interface. Not allowed for VLAN interfaces.
  /// [linodeId] The ID of the Linode to assign this interface to.
  /// [public] Nested attributes object for a Linode public interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  /// [vlan] Nested attributes object for a Linode VLAN interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  /// [vpc] Nested attributes object for a Linode VPC interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  InterfaceArgs({
    this.defaultRoute,
    this.firewallId,
    required this.linodeId,
    this.public,
    this.vlan,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRoute': ?pulumi.Input.mapOptionalInputValue<InterfaceDefaultRoute, Map<String, dynamic>>(defaultRoute, (value) => value.toMap()),
      'firewallId': ?firewallId,
      'linodeId': linodeId,
      'public': ?pulumi.Input.mapOptionalInputValue<InterfacePublic, Map<String, dynamic>>(public, (value) => value.toMap()),
      'vlan': ?pulumi.Input.mapOptionalInputValue<InterfaceVlan, Map<String, dynamic>>(vlan, (value) => value.toMap()),
      'vpc': ?pulumi.Input.mapOptionalInputValue<InterfaceVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory InterfaceArgs.fromMap(Map<String, dynamic> map) {
    return InterfaceArgs(
      defaultRoute: map['defaultRoute'] == null ? null : (InterfaceDefaultRoute.fromMap((map['defaultRoute'] as Map).cast<String, dynamic>())).input(),
      firewallId: map['firewallId'] == null ? null : (map['firewallId'] as int).input(),
      linodeId: (map['linodeId'] as int).input(),
      public: map['public'] == null ? null : (InterfacePublic.fromMap((map['public'] as Map).cast<String, dynamic>())).input(),
      vlan: map['vlan'] == null ? null : (InterfaceVlan.fromMap((map['vlan'] as Map).cast<String, dynamic>())).input(),
      vpc: map['vpc'] == null ? null : (InterfaceVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


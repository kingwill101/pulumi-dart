// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_default_route.dart';
import 'interface_public.dart';
import 'interface_vlan.dart';
import 'interface_vpc.dart';

/// Input properties used for looking up and filtering Interface resources.
class InterfaceState {
  /// Indicates if the interface serves as the default route when multiple interfaces are eligible for this role.
  final pulumi.Input<InterfaceDefaultRoute>? defaultRoute;
  /// The ID of an enabled firewall to secure a VPC or public interface. Not allowed for VLAN interfaces.
  final pulumi.Input<int>? firewallId;
  /// The ID of the Linode to assign this interface to.
  final pulumi.Input<int>? linodeId;
  /// Nested attributes object for a Linode public interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  final pulumi.Input<InterfacePublic>? public;
  /// Nested attributes object for a Linode VLAN interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  final pulumi.Input<InterfaceVlan>? vlan;
  /// Nested attributes object for a Linode VPC interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  final pulumi.Input<InterfaceVpc>? vpc;

  /// Creates a new [InterfaceState].
  /// [defaultRoute] Indicates if the interface serves as the default route when multiple interfaces are eligible for this role.
  /// [firewallId] The ID of an enabled firewall to secure a VPC or public interface. Not allowed for VLAN interfaces.
  /// [linodeId] The ID of the Linode to assign this interface to.
  /// [public] Nested attributes object for a Linode public interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  /// [vlan] Nested attributes object for a Linode VLAN interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  /// [vpc] Nested attributes object for a Linode VPC interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  const InterfaceState({
    this.defaultRoute,
    this.firewallId,
    this.linodeId,
    this.public,
    this.vlan,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRoute': ?pulumi.Input.mapOptionalInputValue<InterfaceDefaultRoute, Map<String, dynamic>>(defaultRoute, (value) => value.toMap()),
      'firewallId': ?firewallId,
      'linodeId': ?linodeId,
      'public': ?pulumi.Input.mapOptionalInputValue<InterfacePublic, Map<String, dynamic>>(public, (value) => value.toMap()),
      'vlan': ?pulumi.Input.mapOptionalInputValue<InterfaceVlan, Map<String, dynamic>>(vlan, (value) => value.toMap()),
      'vpc': ?pulumi.Input.mapOptionalInputValue<InterfaceVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory InterfaceState.fromMap(Map<String, dynamic> map) {
    return InterfaceState(
      defaultRoute: (() { final guardedValue = map['defaultRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterfaceDefaultRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterfacePublic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterfaceVlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterfaceVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


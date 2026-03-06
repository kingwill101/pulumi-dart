// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_router_interface_router_interface_args_doc}
/// The set of arguments for RouterInterface.
/// {@endtemplate}
/// {@macro pulumi_networking_router_interface_router_interface_args_doc}
class RouterInterfaceArgs {
  /// A boolean indicating whether the routes from the
  /// corresponding router ID should be deleted so that the router interface can
  /// be destroyed without any errors. The default value is `false`.
  final pulumi.Input<bool>? forceDestroy;
  /// ID of the port this interface connects to. Changing
  /// this creates a new router interface.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// router interface.
  final pulumi.Input<String>? region;
  /// ID of the router this interface belongs to. Changing
  /// this creates a new router interface.
  final pulumi.Input<String> routerId;
  /// ID of the subnet this interface connects to. Changing
  /// this creates a new router interface.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [RouterInterfaceArgs].
  /// [forceDestroy] A boolean indicating whether the routes from the
  /// [portId] ID of the port this interface connects to. Changing
  /// [region] The region in which to obtain the V2 networking client.
  /// [routerId] ID of the router this interface belongs to. Changing
  /// [subnetId] ID of the subnet this interface connects to. Changing
  const RouterInterfaceArgs({
    this.forceDestroy,
    this.portId,
    this.region,
    required this.routerId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDestroy': ?forceDestroy,
      'portId': ?portId,
      'region': ?region,
      'routerId': routerId,
      'subnetId': ?subnetId,
    };
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: pulumi.Input.fromValue(map['routerId'] as String),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


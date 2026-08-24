// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_argo_smart_routing_argo_smart_routing_args_doc}
/// The set of arguments for ArgoSmartRouting.
/// {@endtemplate}
/// {@macro pulumi_index_argo_smart_routing_argo_smart_routing_args_doc}
class ArgoSmartRoutingArgs {
  /// Specifies the enablement value of Argo Smart Routing.
  /// Available values: "on", "off".
  final pulumi.Input<String> value;
  /// Specifies the zone associated with the API call.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ArgoSmartRoutingArgs].
  /// [value] Specifies the enablement value of Argo Smart Routing.
  /// [zoneId] Specifies the zone associated with the API call.
  const ArgoSmartRoutingArgs({
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory ArgoSmartRoutingArgs.fromMap(Map<String, dynamic> map) {
    return ArgoSmartRoutingArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

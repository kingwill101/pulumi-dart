// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_argo_smart_routing_get_argo_smart_routing_args_doc}
/// Arguments for getArgoSmartRouting.
/// {@endtemplate}
/// {@macro pulumi_index_get_argo_smart_routing_get_argo_smart_routing_args_doc}
class GetArgoSmartRoutingArgs {
  /// Specifies the zone associated with the API call.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetArgoSmartRoutingArgs].
  /// [zoneId] Specifies the zone associated with the API call.
  const GetArgoSmartRoutingArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetArgoSmartRoutingArgs.fromMap(Map<String, dynamic> map) {
    return GetArgoSmartRoutingArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

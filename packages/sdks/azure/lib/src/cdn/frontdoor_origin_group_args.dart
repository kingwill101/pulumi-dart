// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_origin_group_health_probe.dart';
import 'frontdoor_origin_group_load_balancing.dart';

/// {@template pulumi_cdn_frontdoor_origin_group_frontdoor_origin_group_args_doc}
/// The set of arguments for FrontdoorOriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_origin_group_frontdoor_origin_group_args_doc}
class FrontdoorOriginGroupArgs {
  /// The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;
  /// A `health_probe` block as defined below.
  final pulumi.Input<FrontdoorOriginGroupHealthProbe>? healthProbe;
  /// A `load_balancing` block as defined below.
  final pulumi.Input<FrontdoorOriginGroupLoadBalancing> loadBalancing;
  /// The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created.
  final pulumi.Input<String>? name;
  /// Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes.
  ///
  /// &gt; **Note:** This property is currently not used, but will be in the near future.
  final pulumi.Input<int>? restoreTrafficTimeToHealedOrNewEndpointInMinutes;
  /// Specifies whether session affinity should be enabled on this host. Defaults to `true`.
  final pulumi.Input<bool>? sessionAffinityEnabled;

  /// Creates a new [FrontdoorOriginGroupArgs].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created.
  /// [healthProbe] A `health_probe` block as defined below.
  /// [loadBalancing] A `load_balancing` block as defined below.
  /// [name] The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created.
  /// [restoreTrafficTimeToHealedOrNewEndpointInMinutes] Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes.
  /// [sessionAffinityEnabled] Specifies whether session affinity should be enabled on this host. Defaults to `true`.
  FrontdoorOriginGroupArgs({
    required this.cdnFrontdoorProfileId,
    this.healthProbe,
    required this.loadBalancing,
    this.name,
    this.restoreTrafficTimeToHealedOrNewEndpointInMinutes,
    this.sessionAffinityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'healthProbe': ?pulumi.Input.mapOptionalInputValue<FrontdoorOriginGroupHealthProbe, Map<String, dynamic>>(healthProbe, (value) => value.toMap()),
      'loadBalancing': pulumi.Input.mapInputValue<FrontdoorOriginGroupLoadBalancing, Map<String, dynamic>>(loadBalancing, (value) => value.toMap()),
      'name': ?name,
      'restoreTrafficTimeToHealedOrNewEndpointInMinutes': ?restoreTrafficTimeToHealedOrNewEndpointInMinutes,
      'sessionAffinityEnabled': ?sessionAffinityEnabled,
    };
  }

  factory FrontdoorOriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginGroupArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(map['cdnFrontdoorProfileId'] as String),
      healthProbe: (() { final guardedValue = map['healthProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorOriginGroupHealthProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancing: pulumi.Input.fromValue(FrontdoorOriginGroupLoadBalancing.fromMap((map['loadBalancing']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreTrafficTimeToHealedOrNewEndpointInMinutes: (() { final guardedValue = map['restoreTrafficTimeToHealedOrNewEndpointInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sessionAffinityEnabled: (() { final guardedValue = map['sessionAffinityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_origin_group_health_probe.dart';
import 'frontdoor_origin_group_load_balancing.dart';

/// Input properties used for looking up and filtering FrontdoorOriginGroup resources.
class FrontdoorOriginGroupState {
  /// The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// A `health_probe` block as defined below.
  final pulumi.Input<FrontdoorOriginGroupHealthProbe>? healthProbe;
  /// A `load_balancing` block as defined below.
  final pulumi.Input<FrontdoorOriginGroupLoadBalancing>? loadBalancing;
  /// The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created.
  final pulumi.Input<String>? name;
  /// Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes.
  ///
  /// > **Note:** This property is currently not used, but will be in the near future.
  final pulumi.Input<int>? restoreTrafficTimeToHealedOrNewEndpointInMinutes;
  /// Specifies whether session affinity should be enabled on this host. Defaults to `true`.
  final pulumi.Input<bool>? sessionAffinityEnabled;

  /// Creates a new [FrontdoorOriginGroupState].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created.
  /// [healthProbe] A `health_probe` block as defined below.
  /// [loadBalancing] A `load_balancing` block as defined below.
  /// [name] The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created.
  /// [restoreTrafficTimeToHealedOrNewEndpointInMinutes] Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes.
  /// [sessionAffinityEnabled] Specifies whether session affinity should be enabled on this host. Defaults to `true`.
  FrontdoorOriginGroupState({
    this.cdnFrontdoorProfileId,
    this.healthProbe,
    this.loadBalancing,
    this.name,
    this.restoreTrafficTimeToHealedOrNewEndpointInMinutes,
    this.sessionAffinityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'healthProbe': ?pulumi.Input.mapOptionalInputValue<FrontdoorOriginGroupHealthProbe, Map<String, dynamic>>(healthProbe, (value) => value.toMap()),
      'loadBalancing': ?pulumi.Input.mapOptionalInputValue<FrontdoorOriginGroupLoadBalancing, Map<String, dynamic>>(loadBalancing, (value) => value.toMap()),
      'name': ?name,
      'restoreTrafficTimeToHealedOrNewEndpointInMinutes': ?restoreTrafficTimeToHealedOrNewEndpointInMinutes,
      'sessionAffinityEnabled': ?sessionAffinityEnabled,
    };
  }

  factory FrontdoorOriginGroupState.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginGroupState(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] == null ? null : (map['cdnFrontdoorProfileId'] as String).input(),
      healthProbe: map['healthProbe'] == null ? null : (FrontdoorOriginGroupHealthProbe.fromMap((map['healthProbe'] as Map).cast<String, dynamic>())).input(),
      loadBalancing: map['loadBalancing'] == null ? null : (FrontdoorOriginGroupLoadBalancing.fromMap((map['loadBalancing'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      restoreTrafficTimeToHealedOrNewEndpointInMinutes: map['restoreTrafficTimeToHealedOrNewEndpointInMinutes'] == null ? null : (map['restoreTrafficTimeToHealedOrNewEndpointInMinutes'] as int).input(),
      sessionAffinityEnabled: map['sessionAffinityEnabled'] == null ? null : (map['sessionAffinityEnabled'] as bool).input(),
    );
  }
}


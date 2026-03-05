// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_origin_group_health_probe.dart';
import 'get_frontdoor_origin_group_load_balancing.dart';

/// Result data returned by getFrontdoorOriginGroup.
class GetFrontdoorOriginGroupResult {
  /// Specifies the ID of the Front Door Profile within which this Front Door Origin Group exists.
  final String cdnFrontdoorProfileId;
  /// A `health_probe` block as defined below.
  final List<GetFrontdoorOriginGroupHealthProbe> healthProbes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `load_balancing` block as defined below.
  final List<GetFrontdoorOriginGroupLoadBalancing> loadBalancings;
  final String name;
  final String profileName;
  final String resourceGroupName;
  final int restoreTrafficTimeToHealedOrNewEndpointInMinutes;
  /// Specifies whether session affinity is enabled on this host.
  final bool sessionAffinityEnabled;

  /// Creates a new [GetFrontdoorOriginGroupResult].
  /// [cdnFrontdoorProfileId] Specifies the ID of the Front Door Profile within which this Front Door Origin Group exists.
  /// [healthProbes] A `health_probe` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancings] A `load_balancing` block as defined below.
  /// [name] Required.
  /// [profileName] Required.
  /// [resourceGroupName] Required.
  /// [restoreTrafficTimeToHealedOrNewEndpointInMinutes] Required.
  /// [sessionAffinityEnabled] Specifies whether session affinity is enabled on this host.
  GetFrontdoorOriginGroupResult({
    required this.cdnFrontdoorProfileId,
    required this.healthProbes,
    required this.id,
    required this.loadBalancings,
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
    required this.restoreTrafficTimeToHealedOrNewEndpointInMinutes,
    required this.sessionAffinityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'healthProbes': pulumi.Input.encodeList<GetFrontdoorOriginGroupHealthProbe, Map<String, dynamic>>(healthProbes, (value) => value.toMap()),
      'id': id,
      'loadBalancings': pulumi.Input.encodeList<GetFrontdoorOriginGroupLoadBalancing, Map<String, dynamic>>(loadBalancings, (value) => value.toMap()),
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'restoreTrafficTimeToHealedOrNewEndpointInMinutes': restoreTrafficTimeToHealedOrNewEndpointInMinutes,
      'sessionAffinityEnabled': sessionAffinityEnabled,
    };
  }

  factory GetFrontdoorOriginGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupResult(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] as String,
      healthProbes: pulumi.Input.decodeList<GetFrontdoorOriginGroupHealthProbe>(map['healthProbes']!, (value) => GetFrontdoorOriginGroupHealthProbe.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      loadBalancings: pulumi.Input.decodeList<GetFrontdoorOriginGroupLoadBalancing>(map['loadBalancings']!, (value) => GetFrontdoorOriginGroupLoadBalancing.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restoreTrafficTimeToHealedOrNewEndpointInMinutes: map['restoreTrafficTimeToHealedOrNewEndpointInMinutes'] as int,
      sessionAffinityEnabled: map['sessionAffinityEnabled'] as bool,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_origin_group_health_probe.dart';
import 'get_frontdoor_origin_group_load_balancing.dart';

/// Result data returned by getFrontdoorOriginGroup.
class GetFrontdoorOriginGroupResult {
  /// Specifies the ID of the Front Door Profile within which this Front Door Origin Group exists.
  final String? cdnFrontdoorProfileId;
  /// A `healthProbe` block as defined below.
  final List<GetFrontdoorOriginGroupHealthProbe>? healthProbes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `loadBalancing` block as defined below.
  final List<GetFrontdoorOriginGroupLoadBalancing>? loadBalancings;
  final String? name;
  final String? profileName;
  final String? resourceGroupName;
  final int? restoreTrafficTimeToHealedOrNewEndpointInMinutes;
  /// Specifies whether session affinity is enabled on this host.
  final bool? sessionAffinityEnabled;

  /// Creates a new [GetFrontdoorOriginGroupResult].
  /// [cdnFrontdoorProfileId] Specifies the ID of the Front Door Profile within which this Front Door Origin Group exists.
  /// [healthProbes] A `healthProbe` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancings] A `loadBalancing` block as defined below.
  /// [name] Optional.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  /// [restoreTrafficTimeToHealedOrNewEndpointInMinutes] Optional.
  /// [sessionAffinityEnabled] Specifies whether session affinity is enabled on this host.
  const GetFrontdoorOriginGroupResult({
    this.cdnFrontdoorProfileId,
    this.healthProbes,
    this.id,
    this.loadBalancings,
    this.name,
    this.profileName,
    this.resourceGroupName,
    this.restoreTrafficTimeToHealedOrNewEndpointInMinutes,
    this.sessionAffinityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'healthProbes': ?(() { final guardedValue = healthProbes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorOriginGroupHealthProbe, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'loadBalancings': ?(() { final guardedValue = loadBalancings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorOriginGroupLoadBalancing, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
      'restoreTrafficTimeToHealedOrNewEndpointInMinutes': ?restoreTrafficTimeToHealedOrNewEndpointInMinutes,
      'sessionAffinityEnabled': ?sessionAffinityEnabled,
    };
  }

  factory GetFrontdoorOriginGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupResult(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthProbes: (() { final guardedValue = map['healthProbes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorOriginGroupHealthProbe>(guardedValue, (value) => GetFrontdoorOriginGroupHealthProbe.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancings: (() { final guardedValue = map['loadBalancings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorOriginGroupLoadBalancing>(guardedValue, (value) => GetFrontdoorOriginGroupLoadBalancing.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restoreTrafficTimeToHealedOrNewEndpointInMinutes: (() { final guardedValue = map['restoreTrafficTimeToHealedOrNewEndpointInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sessionAffinityEnabled: (() { final guardedValue = map['sessionAffinityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

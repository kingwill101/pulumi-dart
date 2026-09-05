// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pool_filter.dart';
import 'get_load_balancer_pool_load_shedding.dart';
import 'get_load_balancer_pool_notification_filter.dart';
import 'get_load_balancer_pool_origin.dart';
import 'get_load_balancer_pool_origin_steering.dart';

/// Result data returned by getLoadBalancerPool.
class GetLoadBalancerPoolResult {
  /// Identifier.
  final String? accountId;
  /// A list of regions from which to run health checks. Null means every Cloudflare data center.
  final List<String>? checkRegions;
  final String? createdOn;
  /// A human-readable description of the pool.
  final String? description;
  /// This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  final String? disabledAt;
  /// Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  final bool? enabled;
  final GetLoadBalancerPoolFilter? filter;
  /// A list of health sources, ordered from highest to lowest priority, used to evaluate individual origin health and overall pool health. The load balancer uses the first source that has data and falls back to the next. Currently accepted values are null or the exact array ["regional", "global"]; any other combination is rejected. Null (the default) behaves like ["local", "global"]. ["regional", "global"] makes each region steer on its own health, falling back to the global decision when a region has no fresh data. Setting regional requires at least one region in check_regions.
  final List<String>? healthSources;
  /// The ID of this resource.
  final String? id;
  /// The latitude of the data center containing the origins used in this pool in decimal degrees. If this is set, longitude must also be set.
  final double? latitude;
  /// Configures load shedding policies and percentages for the pool.
  final GetLoadBalancerPoolLoadShedding? loadShedding;
  /// The longitude of the data center containing the origins used in this pool in decimal degrees. If this is set, latitude must also be set.
  final double? longitude;
  /// The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and will failover to the next available pool.
  final int? minimumOrigins;
  final String? modifiedOn;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final String? monitor;
  /// The ID of the Monitor Group to use for checking the health of origins within this pool.
  final String? monitorGroup;
  /// A short name (tag) for the pool. Only alphanumeric characters, hyphens, and underscores are allowed.
  final String? name;
  /// List of networks where Load Balancer or Pool is enabled.
  final List<String>? networks;
  /// This field is now deprecated. It has been moved to Cloudflare's Centralized Notification service https://developers.cloudflare.com/fundamentals/notifications/. The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list.
  final String? notificationEmail;
  /// Filter pool and origin health notifications by resource type or health status. Use null to reset.
  final GetLoadBalancerPoolNotificationFilter? notificationFilter;
  /// Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
  final GetLoadBalancerPoolOriginSteering? originSteering;
  /// The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy.
  final List<GetLoadBalancerPoolOrigin>? origins;
  final String? poolId;

  /// Creates a new [GetLoadBalancerPoolResult].
  /// [accountId] Identifier.
  /// [checkRegions] A list of regions from which to run health checks. Null means every Cloudflare data center.
  /// [createdOn] Optional.
  /// [description] A human-readable description of the pool.
  /// [disabledAt] This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  /// [enabled] Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  /// [filter] Optional.
  /// [healthSources] A list of health sources, ordered from highest to lowest priority, used to evaluate individual origin health and overall pool health. The load balancer uses the first source that has data and falls back to the next. Currently accepted values are null or the exact array ["regional", "global"]; any other combination is rejected. Null (the default) behaves like ["local", "global"]. ["regional", "global"] makes each region steer on its own health, falling back to the global decision when a region has no fresh data. Setting regional requires at least one region in check_regions.
  /// [id] The ID of this resource.
  /// [latitude] The latitude of the data center containing the origins used in this pool in decimal degrees. If this is set, longitude must also be set.
  /// [loadShedding] Configures load shedding policies and percentages for the pool.
  /// [longitude] The longitude of the data center containing the origins used in this pool in decimal degrees. If this is set, latitude must also be set.
  /// [minimumOrigins] The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and will failover to the next available pool.
  /// [modifiedOn] Optional.
  /// [monitor] The ID of the Monitor to use for checking the health of origins within this pool.
  /// [monitorGroup] The ID of the Monitor Group to use for checking the health of origins within this pool.
  /// [name] A short name (tag) for the pool. Only alphanumeric characters, hyphens, and underscores are allowed.
  /// [networks] List of networks where Load Balancer or Pool is enabled.
  /// [notificationEmail] This field is now deprecated. It has been moved to Cloudflare's Centralized Notification service https://developers.cloudflare.com/fundamentals/notifications/. The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list.
  /// [notificationFilter] Filter pool and origin health notifications by resource type or health status. Use null to reset.
  /// [originSteering] Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
  /// [origins] The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy.
  /// [poolId] Optional.
  const GetLoadBalancerPoolResult({
    this.accountId,
    this.checkRegions,
    this.createdOn,
    this.description,
    this.disabledAt,
    this.enabled,
    this.filter,
    this.healthSources,
    this.id,
    this.latitude,
    this.loadShedding,
    this.longitude,
    this.minimumOrigins,
    this.modifiedOn,
    this.monitor,
    this.monitorGroup,
    this.name,
    this.networks,
    this.notificationEmail,
    this.notificationFilter,
    this.originSteering,
    this.origins,
    this.poolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'checkRegions': ?checkRegions,
      'createdOn': ?createdOn,
      'description': ?description,
      'disabledAt': ?disabledAt,
      'enabled': ?enabled,
      'filter': ?filter?.toMap(),
      'healthSources': ?healthSources,
      'id': ?id,
      'latitude': ?latitude,
      'loadShedding': ?loadShedding?.toMap(),
      'longitude': ?longitude,
      'minimumOrigins': ?minimumOrigins,
      'modifiedOn': ?modifiedOn,
      'monitor': ?monitor,
      'monitorGroup': ?monitorGroup,
      'name': ?name,
      'networks': ?networks,
      'notificationEmail': ?notificationEmail,
      'notificationFilter': ?notificationFilter?.toMap(),
      'originSteering': ?originSteering?.toMap(),
      'origins': ?(() { final guardedValue = origins; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerPoolOrigin, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'poolId': ?poolId,
    };
  }

  factory GetLoadBalancerPoolResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      checkRegions: (() { final guardedValue = map['checkRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabledAt: (() { final guardedValue = map['disabledAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetLoadBalancerPoolFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      healthSources: (() { final guardedValue = map['healthSources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latitude: (() { final guardedValue = map['latitude']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      loadShedding: (() { final guardedValue = map['loadShedding']; if (guardedValue == null) return null; return GetLoadBalancerPoolLoadShedding.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      longitude: (() { final guardedValue = map['longitude']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      minimumOrigins: (() { final guardedValue = map['minimumOrigins']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitorGroup: (() { final guardedValue = map['monitorGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      notificationEmail: (() { final guardedValue = map['notificationEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationFilter: (() { final guardedValue = map['notificationFilter']; if (guardedValue == null) return null; return GetLoadBalancerPoolNotificationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      originSteering: (() { final guardedValue = map['originSteering']; if (guardedValue == null) return null; return GetLoadBalancerPoolOriginSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerPoolOrigin>(guardedValue, (value) => GetLoadBalancerPoolOrigin.fromMap((value as Map).cast<String, dynamic>())); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

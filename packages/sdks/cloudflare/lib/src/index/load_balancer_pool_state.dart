// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_pool_load_shedding.dart';
import 'load_balancer_pool_notification_filter.dart';
import 'load_balancer_pool_origin.dart';
import 'load_balancer_pool_origin_steering.dart';

/// Input properties used for looking up and filtering LoadBalancerPool resources.
class LoadBalancerPoolState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// A list of regions from which to run health checks. Null means every Cloudflare data center.
  final pulumi.Input<List<String>?>? checkRegions;
  final pulumi.Input<String?>? createdOn;
  /// A human-readable description of the pool.
  final pulumi.Input<String?>? description;
  /// This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  final pulumi.Input<String?>? disabledAt;
  /// Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  final pulumi.Input<bool?>? enabled;
  /// A list of health sources, ordered from highest to lowest priority, used to evaluate individual origin health and overall pool health. The load balancer uses the first source that has data and falls back to the next. Currently accepted values are null or the exact array ["regional", "global"]; any other combination is rejected. Null (the default) behaves like ["local", "global"]. ["regional", "global"] makes each region steer on its own health, falling back to the global decision when a region has no fresh data. Setting regional requires at least one region in check_regions.
  final pulumi.Input<List<String>?>? healthSources;
  /// The latitude of the data center containing the origins used in this pool in decimal degrees. If this is set, longitude must also be set.
  final pulumi.Input<double?>? latitude;
  /// Configures load shedding policies and percentages for the pool.
  final pulumi.Input<LoadBalancerPoolLoadShedding?>? loadShedding;
  /// The longitude of the data center containing the origins used in this pool in decimal degrees. If this is set, latitude must also be set.
  final pulumi.Input<double?>? longitude;
  /// The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and will failover to the next available pool.
  final pulumi.Input<int?>? minimumOrigins;
  final pulumi.Input<String?>? modifiedOn;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final pulumi.Input<String?>? monitor;
  /// The ID of the Monitor Group to use for checking the health of origins within this pool.
  final pulumi.Input<String?>? monitorGroup;
  /// A short name (tag) for the pool. Only alphanumeric characters, hyphens, and underscores are allowed.
  final pulumi.Input<String?>? name;
  /// List of networks where Load Balancer or Pool is enabled.
  final pulumi.Input<List<String>?>? networks;
  /// This field is now deprecated. It has been moved to Cloudflare's Centralized Notification service https://developers.cloudflare.com/fundamentals/notifications/. The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list.
  final pulumi.Input<String?>? notificationEmail;
  /// Filter pool and origin health notifications by resource type or health status. Use null to reset.
  final pulumi.Input<LoadBalancerPoolNotificationFilter?>? notificationFilter;
  /// Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
  final pulumi.Input<LoadBalancerPoolOriginSteering?>? originSteering;
  /// The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy.
  final pulumi.Input<List<LoadBalancerPoolOrigin>?>? origins;

  /// Creates a new [LoadBalancerPoolState].
  /// [accountId] Identifier.
  /// [checkRegions] A list of regions from which to run health checks. Null means every Cloudflare data center.
  /// [createdOn] Optional.
  /// [description] A human-readable description of the pool.
  /// [disabledAt] This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  /// [enabled] Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  /// [healthSources] A list of health sources, ordered from highest to lowest priority, used to evaluate individual origin health and overall pool health. The load balancer uses the first source that has data and falls back to the next. Currently accepted values are null or the exact array ["regional", "global"]; any other combination is rejected. Null (the default) behaves like ["local", "global"]. ["regional", "global"] makes each region steer on its own health, falling back to the global decision when a region has no fresh data. Setting regional requires at least one region in check_regions.
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
  const LoadBalancerPoolState({
    this.accountId,
    this.checkRegions,
    this.createdOn,
    this.description,
    this.disabledAt,
    this.enabled,
    this.healthSources,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'checkRegions': ?checkRegions,
      'createdOn': ?createdOn,
      'description': ?description,
      'disabledAt': ?disabledAt,
      'enabled': ?enabled,
      'healthSources': ?healthSources,
      'latitude': ?latitude,
      'loadShedding': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolLoadShedding, Map<String, dynamic>>(loadShedding, (value) => value.toMap()),
      'longitude': ?longitude,
      'minimumOrigins': ?minimumOrigins,
      'modifiedOn': ?modifiedOn,
      'monitor': ?monitor,
      'monitorGroup': ?monitorGroup,
      'name': ?name,
      'networks': ?networks,
      'notificationEmail': ?notificationEmail,
      'notificationFilter': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolNotificationFilter, Map<String, dynamic>>(notificationFilter, (value) => value.toMap()),
      'originSteering': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolOriginSteering, Map<String, dynamic>>(originSteering, (value) => value.toMap()),
      'origins': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerPoolOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<LoadBalancerPoolOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerPoolState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkRegions: (() { final guardedValue = map['checkRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabledAt: (() { final guardedValue = map['disabledAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthSources: (() { final guardedValue = map['healthSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      latitude: (() { final guardedValue = map['latitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      loadShedding: (() { final guardedValue = map['loadShedding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolLoadShedding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      longitude: (() { final guardedValue = map['longitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minimumOrigins: (() { final guardedValue = map['minimumOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorGroup: (() { final guardedValue = map['monitorGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notificationEmail: (() { final guardedValue = map['notificationEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationFilter: (() { final guardedValue = map['notificationFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolNotificationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originSteering: (() { final guardedValue = map['originSteering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolOriginSteering.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerPoolOrigin>(guardedValue, (value) => LoadBalancerPoolOrigin.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

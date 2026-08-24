// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pools_result_load_shedding.dart';
import 'get_load_balancer_pools_result_notification_filter.dart';
import 'get_load_balancer_pools_result_origin.dart';
import 'get_load_balancer_pools_result_origin_steering.dart';

class GetLoadBalancerPoolsResult {
  /// A list of regions from which to run health checks. Null means every Cloudflare data center.
  final pulumi.Input<List<String>> checkRegions;
  final pulumi.Input<String> createdOn;
  /// A human-readable description of the pool.
  final pulumi.Input<String> description;
  /// This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  final pulumi.Input<String> disabledAt;
  /// Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;
  /// The latitude of the data center containing the origins used in this pool in decimal degrees. If this is set, longitude must also be set.
  final pulumi.Input<double> latitude;
  /// Configures load shedding policies and percentages for the pool.
  final pulumi.Input<GetLoadBalancerPoolsResultLoadShedding> loadShedding;
  /// The longitude of the data center containing the origins used in this pool in decimal degrees. If this is set, latitude must also be set.
  final pulumi.Input<double> longitude;
  /// The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and will failover to the next available pool.
  final pulumi.Input<int> minimumOrigins;
  final pulumi.Input<String> modifiedOn;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final pulumi.Input<String> monitor;
  /// The ID of the Monitor Group to use for checking the health of origins within this pool.
  final pulumi.Input<String> monitorGroup;
  /// A short name (tag) for the pool. Only alphanumeric characters, hyphens, and underscores are allowed.
  final pulumi.Input<String> name;
  /// List of networks where Load Balancer or Pool is enabled.
  final pulumi.Input<List<String>> networks;
  /// This field is now deprecated. It has been moved to Cloudflare's Centralized Notification service https://developers.cloudflare.com/fundamentals/notifications/. The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list.
  final pulumi.Input<String> notificationEmail;
  /// Filter pool and origin health notifications by resource type or health status. Use null to reset.
  final pulumi.Input<GetLoadBalancerPoolsResultNotificationFilter> notificationFilter;
  /// Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
  final pulumi.Input<GetLoadBalancerPoolsResultOriginSteering> originSteering;
  /// The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy.
  final pulumi.Input<List<GetLoadBalancerPoolsResultOrigin>> origins;

  /// Creates a new [GetLoadBalancerPoolsResult].
  /// [checkRegions] A list of regions from which to run health checks. Null means every Cloudflare data center.
  /// [createdOn] Required.
  /// [description] A human-readable description of the pool.
  /// [disabledAt] This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  /// [enabled] Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  /// [id] Required.
  /// [latitude] The latitude of the data center containing the origins used in this pool in decimal degrees. If this is set, longitude must also be set.
  /// [loadShedding] Configures load shedding policies and percentages for the pool.
  /// [longitude] The longitude of the data center containing the origins used in this pool in decimal degrees. If this is set, latitude must also be set.
  /// [minimumOrigins] The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and will failover to the next available pool.
  /// [modifiedOn] Required.
  /// [monitor] The ID of the Monitor to use for checking the health of origins within this pool.
  /// [monitorGroup] The ID of the Monitor Group to use for checking the health of origins within this pool.
  /// [name] A short name (tag) for the pool. Only alphanumeric characters, hyphens, and underscores are allowed.
  /// [networks] List of networks where Load Balancer or Pool is enabled.
  /// [notificationEmail] This field is now deprecated. It has been moved to Cloudflare's Centralized Notification service https://developers.cloudflare.com/fundamentals/notifications/. The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list.
  /// [notificationFilter] Filter pool and origin health notifications by resource type or health status. Use null to reset.
  /// [originSteering] Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
  /// [origins] The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy.
  const GetLoadBalancerPoolsResult({
    required this.checkRegions,
    required this.createdOn,
    required this.description,
    required this.disabledAt,
    required this.enabled,
    required this.id,
    required this.latitude,
    required this.loadShedding,
    required this.longitude,
    required this.minimumOrigins,
    required this.modifiedOn,
    required this.monitor,
    required this.monitorGroup,
    required this.name,
    required this.networks,
    required this.notificationEmail,
    required this.notificationFilter,
    required this.originSteering,
    required this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkRegions': checkRegions,
      'createdOn': createdOn,
      'description': description,
      'disabledAt': disabledAt,
      'enabled': enabled,
      'id': id,
      'latitude': latitude,
      'loadShedding': pulumi.Input.mapInputValue<GetLoadBalancerPoolsResultLoadShedding, Map<String, dynamic>>(loadShedding, (value) => value.toMap()),
      'longitude': longitude,
      'minimumOrigins': minimumOrigins,
      'modifiedOn': modifiedOn,
      'monitor': monitor,
      'monitorGroup': monitorGroup,
      'name': name,
      'networks': networks,
      'notificationEmail': notificationEmail,
      'notificationFilter': pulumi.Input.mapInputValue<GetLoadBalancerPoolsResultNotificationFilter, Map<String, dynamic>>(notificationFilter, (value) => value.toMap()),
      'originSteering': pulumi.Input.mapInputValue<GetLoadBalancerPoolsResultOriginSteering, Map<String, dynamic>>(originSteering, (value) => value.toMap()),
      'origins': pulumi.Input.mapInputValue<List<GetLoadBalancerPoolsResultOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<GetLoadBalancerPoolsResultOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLoadBalancerPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsResult(
      checkRegions: pulumi.Input.fromValue((map['checkRegions'] as List).cast<String>()),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      disabledAt: pulumi.Input.fromValue(map['disabledAt'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      latitude: pulumi.Input.fromValue((map['latitude'] as num).toDouble()),
      loadShedding: pulumi.Input.fromValue(GetLoadBalancerPoolsResultLoadShedding.fromMap((map['loadShedding']! as Map).cast<String, dynamic>())),
      longitude: pulumi.Input.fromValue((map['longitude'] as num).toDouble()),
      minimumOrigins: pulumi.Input.fromValue((map['minimumOrigins'] as num).toInt()),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      monitor: pulumi.Input.fromValue(map['monitor'] as String),
      monitorGroup: pulumi.Input.fromValue(map['monitorGroup'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networks: pulumi.Input.fromValue((map['networks'] as List).cast<String>()),
      notificationEmail: pulumi.Input.fromValue(map['notificationEmail'] as String),
      notificationFilter: pulumi.Input.fromValue(GetLoadBalancerPoolsResultNotificationFilter.fromMap((map['notificationFilter']! as Map).cast<String, dynamic>())),
      originSteering: pulumi.Input.fromValue(GetLoadBalancerPoolsResultOriginSteering.fromMap((map['originSteering']! as Map).cast<String, dynamic>())),
      origins: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancerPoolsResultOrigin>(map['origins']!, (value) => GetLoadBalancerPoolsResultOrigin.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

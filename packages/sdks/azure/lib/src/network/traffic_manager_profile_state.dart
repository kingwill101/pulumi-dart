// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_profile_dns_config.dart';
import 'traffic_manager_profile_monitor_config.dart';

/// Input properties used for looking up and filtering TrafficManagerProfile resources.
class TrafficManagerProfileState {
  /// This block specifies the DNS configuration of the Profile. One `dns_config` block as defined below.
  final pulumi.Input<TrafficManagerProfileDnsConfig>? dnsConfig;
  /// The FQDN of the created Profile.
  final pulumi.Input<String>? fqdn;
  /// The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`.
  ///
  /// > **Note:** `max_return` must be set when the `traffic_routing_method` is `MultiValue`.
  final pulumi.Input<int>? maxReturn;
  /// This block specifies the Endpoint monitoring configuration for the Profile. One `monitor_config` block as defined below.
  final pulumi.Input<TrafficManagerProfileMonitorConfig>? monitorConfig;
  /// The name of the Traffic Manager profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The status of the profile, can be set to either `Enabled` or `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? profileStatus;
  /// The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the algorithm used to route traffic. Possible values are `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet` and `MultiValue`.
  /// * `Geographic` - Traffic is routed based on Geographic regions specified in the Endpoint.
  /// * `MultiValue` - All healthy Endpoints are returned.  MultiValue routing method works only if all the endpoints of type `External` and are specified as IPv4 or IPv6 addresses.
  /// * `Performance` - Traffic is routed via the User's closest Endpoint
  /// * `Priority` - Traffic is routed to the Endpoint with the lowest `priority` value.
  /// * `Subnet` - Traffic is routed based on a mapping of sets of end-user IP address ranges to a specific Endpoint within a Traffic Manager profile.
  /// * `Weighted` - Traffic is spread across Endpoints proportional to their `weight` value.
  final pulumi.Input<String>? trafficRoutingMethod;
  /// Indicates whether Traffic View is enabled for the Traffic Manager profile.
  final pulumi.Input<bool>? trafficViewEnabled;

  /// Creates a new [TrafficManagerProfileState].
  /// [dnsConfig] This block specifies the DNS configuration of the Profile. One `dns_config` block as defined below.
  /// [fqdn] The FQDN of the created Profile.
  /// [maxReturn] The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`.
  /// [monitorConfig] This block specifies the Endpoint monitoring configuration for the Profile. One `monitor_config` block as defined below.
  /// [name] The name of the Traffic Manager profile. Changing this forces a new resource to be created.
  /// [profileStatus] The status of the profile, can be set to either `Enabled` or `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trafficRoutingMethod] Specifies the algorithm used to route traffic. Possible values are `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet` and `MultiValue`.
  /// [trafficViewEnabled] Indicates whether Traffic View is enabled for the Traffic Manager profile.
  TrafficManagerProfileState({
    this.dnsConfig,
    this.fqdn,
    this.maxReturn,
    this.monitorConfig,
    this.name,
    this.profileStatus,
    this.resourceGroupName,
    this.tags,
    this.trafficRoutingMethod,
    this.trafficViewEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<TrafficManagerProfileDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'maxReturn': ?maxReturn,
      'monitorConfig': ?pulumi.Input.mapOptionalInputValue<TrafficManagerProfileMonitorConfig, Map<String, dynamic>>(monitorConfig, (value) => value.toMap()),
      'name': ?name,
      'profileStatus': ?profileStatus,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'trafficRoutingMethod': ?trafficRoutingMethod,
      'trafficViewEnabled': ?trafficViewEnabled,
    };
  }

  factory TrafficManagerProfileState.fromMap(Map<String, dynamic> map) {
    return TrafficManagerProfileState(
      dnsConfig: map['dnsConfig'] == null ? null : (TrafficManagerProfileDnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>())).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      maxReturn: map['maxReturn'] == null ? null : (map['maxReturn'] as int).input(),
      monitorConfig: map['monitorConfig'] == null ? null : (TrafficManagerProfileMonitorConfig.fromMap((map['monitorConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      profileStatus: map['profileStatus'] == null ? null : (map['profileStatus'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficRoutingMethod: map['trafficRoutingMethod'] == null ? null : (map['trafficRoutingMethod'] as String).input(),
      trafficViewEnabled: map['trafficViewEnabled'] == null ? null : (map['trafficViewEnabled'] as bool).input(),
    );
  }
}


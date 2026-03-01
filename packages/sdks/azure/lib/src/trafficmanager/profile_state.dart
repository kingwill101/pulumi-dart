// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_dns_config.dart';
import 'profile_monitor_config.dart';

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// This block specifies the DNS configuration of the Profile. One `dns_config` block as defined below.
  final pulumi.Input<ProfileDnsConfig>? dnsConfig;
  /// The FQDN of the created Profile.
  final pulumi.Input<String>? fqdn;
  /// The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`.
  ///
  /// > **Note:** `max_return` must be set when the `traffic_routing_method` is `MultiValue`.
  final pulumi.Input<int>? maxReturn;
  /// This block specifies the Endpoint monitoring configuration for the Profile. One `monitor_config` block as defined below.
  final pulumi.Input<ProfileMonitorConfig>? monitorConfig;
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

  /// Creates a new [ProfileState].
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
  ProfileState({
    pulumi.Output<ProfileDnsConfig>? dnsConfig,
    pulumi.Output<String>? fqdn,
    pulumi.Output<int>? maxReturn,
    pulumi.Output<ProfileMonitorConfig>? monitorConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? profileStatus,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? trafficRoutingMethod,
    pulumi.Output<bool>? trafficViewEnabled,
  }) :
      dnsConfig = pulumi.Input.asOptionalInput<ProfileDnsConfig>(dnsConfig),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      maxReturn = pulumi.Input.asOptionalInput<int>(maxReturn),
      monitorConfig = pulumi.Input.asOptionalInput<ProfileMonitorConfig>(monitorConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      profileStatus = pulumi.Input.asOptionalInput<String>(profileStatus),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficRoutingMethod = pulumi.Input.asOptionalInput<String>(trafficRoutingMethod),
      trafficViewEnabled = pulumi.Input.asOptionalInput<bool>(trafficViewEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<ProfileDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'maxReturn': ?maxReturn,
      'monitorConfig': ?pulumi.Input.mapOptionalInputValue<ProfileMonitorConfig, Map<String, dynamic>>(monitorConfig, (value) => value.toMap()),
      'name': ?name,
      'profileStatus': ?profileStatus,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'trafficRoutingMethod': ?trafficRoutingMethod,
      'trafficViewEnabled': ?trafficViewEnabled,
    };
  }

  factory ProfileState.fromMap(Map<String, dynamic> map) {
    return ProfileState(
      dnsConfig: map['dnsConfig'] == null ? null : pulumi.Output.create<ProfileDnsConfig>(ProfileDnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>())),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      maxReturn: map['maxReturn'] == null ? null : pulumi.Output.create<int>(map['maxReturn'] as int),
      monitorConfig: map['monitorConfig'] == null ? null : pulumi.Output.create<ProfileMonitorConfig>(ProfileMonitorConfig.fromMap((map['monitorConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      profileStatus: map['profileStatus'] == null ? null : pulumi.Output.create<String>(map['profileStatus'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficRoutingMethod: map['trafficRoutingMethod'] == null ? null : pulumi.Output.create<String>(map['trafficRoutingMethod'] as String),
      trafficViewEnabled: map['trafficViewEnabled'] == null ? null : pulumi.Output.create<bool>(map['trafficViewEnabled'] as bool),
    );
  }
}


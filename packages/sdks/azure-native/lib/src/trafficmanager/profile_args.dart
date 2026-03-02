// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_config.dart';
import 'endpoint_trafficmanager.dart';
import 'monitor_config.dart';

/// {@template pulumi_trafficmanager_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_trafficmanager_profile_args_doc}
class ProfileArgs {
  /// The list of allowed endpoint record types.
  final pulumi.Input<List<String>>? allowedEndpointRecordTypes;
  /// The DNS settings of the Traffic Manager profile.
  final pulumi.Input<DnsConfig>? dnsConfig;
  /// The list of endpoints in the Traffic Manager profile.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<EndpointTrafficmanager>>? endpoints;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  final pulumi.Input<String>? id;
  /// The Azure Region where the resource lives
  final pulumi.Input<String>? location;
  /// Maximum number of endpoints to be returned for MultiValue routing type.
  final pulumi.Input<double>? maxReturn;
  /// The endpoint monitoring settings of the Traffic Manager profile.
  final pulumi.Input<MonitorConfig>? monitorConfig;
  /// The name of the resource
  final pulumi.Input<String>? name;
  /// The name of the Traffic Manager profile.
  final pulumi.Input<String>? profileName;
  /// The status of the Traffic Manager profile.
  final pulumi.Input<String>? profileStatus;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The traffic routing method of the Traffic Manager profile.
  final pulumi.Input<String>? trafficRoutingMethod;
  /// Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
  final pulumi.Input<String>? trafficViewEnrollmentStatus;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  final pulumi.Input<String>? type;

  /// Creates a new [ProfileArgs].
  /// [allowedEndpointRecordTypes] The list of allowed endpoint record types.
  /// [dnsConfig] The DNS settings of the Traffic Manager profile.
  /// [endpoints] The list of endpoints in the Traffic Manager profile.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  /// [location] The Azure Region where the resource lives
  /// [maxReturn] Maximum number of endpoints to be returned for MultiValue routing type.
  /// [monitorConfig] The endpoint monitoring settings of the Traffic Manager profile.
  /// [name] The name of the resource
  /// [profileName] The name of the Traffic Manager profile.
  /// [profileStatus] The status of the Traffic Manager profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [trafficRoutingMethod] The traffic routing method of the Traffic Manager profile.
  /// [trafficViewEnrollmentStatus] Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
  /// [type] The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  ProfileArgs({
    this.allowedEndpointRecordTypes,
    this.dnsConfig,
    this.endpoints,
    this.id,
    this.location,
    this.maxReturn,
    this.monitorConfig,
    this.name,
    this.profileName,
    this.profileStatus,
    required this.resourceGroupName,
    this.tags,
    this.trafficRoutingMethod,
    this.trafficViewEnrollmentStatus,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedEndpointRecordTypes': ?allowedEndpointRecordTypes,
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<DnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'endpoints': ?endpoints,
      'id': ?id,
      'location': ?location,
      'maxReturn': ?maxReturn,
      'monitorConfig': ?pulumi.Input.mapOptionalInputValue<MonitorConfig, Map<String, dynamic>>(monitorConfig, (value) => value.toMap()),
      'name': ?name,
      'profileName': ?profileName,
      'profileStatus': ?profileStatus,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'trafficRoutingMethod': ?trafficRoutingMethod,
      'trafficViewEnrollmentStatus': ?trafficViewEnrollmentStatus,
      'type': ?type,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      allowedEndpointRecordTypes: map['allowedEndpointRecordTypes'] == null ? null : ((map['allowedEndpointRecordTypes'] as List).cast<String>()).input(),
      dnsConfig: map['dnsConfig'] == null ? null : (DnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : ((map['endpoints'] as List).cast<EndpointTrafficmanager>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxReturn: map['maxReturn'] == null ? null : (map['maxReturn'] as double).input(),
      monitorConfig: map['monitorConfig'] == null ? null : (MonitorConfig.fromMap((map['monitorConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      profileName: map['profileName'] == null ? null : (map['profileName'] as String).input(),
      profileStatus: map['profileStatus'] == null ? null : (map['profileStatus'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficRoutingMethod: map['trafficRoutingMethod'] == null ? null : (map['trafficRoutingMethod'] as String).input(),
      trafficViewEnrollmentStatus: map['trafficViewEnrollmentStatus'] == null ? null : (map['trafficViewEnrollmentStatus'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}


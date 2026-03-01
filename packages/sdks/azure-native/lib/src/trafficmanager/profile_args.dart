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
    pulumi.Output<List<String>>? allowedEndpointRecordTypes,
    pulumi.Output<DnsConfig>? dnsConfig,
    pulumi.Output<List<EndpointTrafficmanager>>? endpoints,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<double>? maxReturn,
    pulumi.Output<MonitorConfig>? monitorConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? profileName,
    pulumi.Output<String>? profileStatus,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? trafficRoutingMethod,
    pulumi.Output<String>? trafficViewEnrollmentStatus,
    pulumi.Output<String>? type,
  }) :
      allowedEndpointRecordTypes = pulumi.Input.asOptionalInput<List<String>>(allowedEndpointRecordTypes),
      dnsConfig = pulumi.Input.asOptionalInput<DnsConfig>(dnsConfig),
      endpoints = pulumi.Input.asOptionalInput<List<EndpointTrafficmanager>>(endpoints),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxReturn = pulumi.Input.asOptionalInput<double>(maxReturn),
      monitorConfig = pulumi.Input.asOptionalInput<MonitorConfig>(monitorConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      profileStatus = pulumi.Input.asOptionalInput<String>(profileStatus),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficRoutingMethod = pulumi.Input.asOptionalInput<String>(trafficRoutingMethod),
      trafficViewEnrollmentStatus = pulumi.Input.asOptionalInput<String>(trafficViewEnrollmentStatus),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allowedEndpointRecordTypes: map['allowedEndpointRecordTypes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedEndpointRecordTypes'] as List).cast<String>()),
      dnsConfig: map['dnsConfig'] == null ? null : pulumi.Output.create<DnsConfig>(DnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>())),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<EndpointTrafficmanager>>((map['endpoints'] as List).cast<EndpointTrafficmanager>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxReturn: map['maxReturn'] == null ? null : pulumi.Output.create<double>(map['maxReturn'] as double),
      monitorConfig: map['monitorConfig'] == null ? null : pulumi.Output.create<MonitorConfig>(MonitorConfig.fromMap((map['monitorConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      profileStatus: map['profileStatus'] == null ? null : pulumi.Output.create<String>(map['profileStatus'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficRoutingMethod: map['trafficRoutingMethod'] == null ? null : pulumi.Output.create<String>(map['trafficRoutingMethod'] as String),
      trafficViewEnrollmentStatus: map['trafficViewEnrollmentStatus'] == null ? null : pulumi.Output.create<String>(map['trafficViewEnrollmentStatus'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


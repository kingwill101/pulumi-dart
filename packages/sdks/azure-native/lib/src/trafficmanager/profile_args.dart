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
  const ProfileArgs({
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
      allowedEndpointRecordTypes: (() { final guardedValue = map['allowedEndpointRecordTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<EndpointTrafficmanager>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxReturn: (() { final guardedValue = map['maxReturn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      monitorConfig: (() { final guardedValue = map['monitorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileStatus: (() { final guardedValue = map['profileStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficRoutingMethod: (() { final guardedValue = map['trafficRoutingMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficViewEnrollmentStatus: (() { final guardedValue = map['trafficViewEnrollmentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

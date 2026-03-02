// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_config_response.dart';
import 'endpoint_response.dart';
import 'monitor_config_response.dart';

/// Result data returned by getProfile.
class GetProfileResult {
  /// The list of allowed endpoint record types.
  final List<String>? allowedEndpointRecordTypes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The DNS settings of the Traffic Manager profile.
  final DnsConfigResponse? dnsConfig;
  /// The list of endpoints in the Traffic Manager profile.
  final List<EndpointResponse>? endpoints;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  final String? id;
  /// The Azure Region where the resource lives
  final String? location;
  /// Maximum number of endpoints to be returned for MultiValue routing type.
  final double? maxReturn;
  /// The endpoint monitoring settings of the Traffic Manager profile.
  final MonitorConfigResponse? monitorConfig;
  /// The name of the resource
  final String? name;
  /// The status of the Traffic Manager profile.
  final String? profileStatus;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The traffic routing method of the Traffic Manager profile.
  final String? trafficRoutingMethod;
  /// Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
  final String? trafficViewEnrollmentStatus;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  final String? type;

  /// Creates a new [GetProfileResult].
  /// [allowedEndpointRecordTypes] The list of allowed endpoint record types.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsConfig] The DNS settings of the Traffic Manager profile.
  /// [endpoints] The list of endpoints in the Traffic Manager profile.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  /// [location] The Azure Region where the resource lives
  /// [maxReturn] Maximum number of endpoints to be returned for MultiValue routing type.
  /// [monitorConfig] The endpoint monitoring settings of the Traffic Manager profile.
  /// [name] The name of the resource
  /// [profileStatus] The status of the Traffic Manager profile.
  /// [tags] Resource tags.
  /// [trafficRoutingMethod] The traffic routing method of the Traffic Manager profile.
  /// [trafficViewEnrollmentStatus] Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
  /// [type] The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  GetProfileResult({
    this.allowedEndpointRecordTypes,
    required this.azureApiVersion,
    this.dnsConfig,
    this.endpoints,
    this.id,
    this.location,
    this.maxReturn,
    this.monitorConfig,
    this.name,
    this.profileStatus,
    this.tags,
    this.trafficRoutingMethod,
    this.trafficViewEnrollmentStatus,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedEndpointRecordTypes': ?allowedEndpointRecordTypes,
      'azureApiVersion': azureApiVersion,
      'dnsConfig': ?dnsConfig == null ? null : dnsConfig!.toMap(),
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<EndpointResponse, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'maxReturn': ?maxReturn,
      'monitorConfig': ?monitorConfig == null ? null : monitorConfig!.toMap(),
      'name': ?name,
      'profileStatus': ?profileStatus,
      'tags': ?tags,
      'trafficRoutingMethod': ?trafficRoutingMethod,
      'trafficViewEnrollmentStatus': ?trafficViewEnrollmentStatus,
      'type': ?type,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      allowedEndpointRecordTypes: map['allowedEndpointRecordTypes'] == null ? null : (map['allowedEndpointRecordTypes']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      dnsConfig: map['dnsConfig'] == null ? null : DnsConfigResponse.fromMap((map['dnsConfig']! as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<EndpointResponse>(map['endpoints']!, (value) => EndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      maxReturn: map['maxReturn'] == null ? null : map['maxReturn']! as double,
      monitorConfig: map['monitorConfig'] == null ? null : MonitorConfigResponse.fromMap((map['monitorConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name']! as String,
      profileStatus: map['profileStatus'] == null ? null : map['profileStatus']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      trafficRoutingMethod: map['trafficRoutingMethod'] == null ? null : map['trafficRoutingMethod']! as String,
      trafficViewEnrollmentStatus: map['trafficViewEnrollmentStatus'] == null ? null : map['trafficViewEnrollmentStatus']! as String,
      type: map['type'] == null ? null : map['type']! as String,
    );
  }
}


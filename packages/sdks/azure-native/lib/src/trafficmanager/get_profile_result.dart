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
  const GetProfileResult({
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
      'dnsConfig': ?dnsConfig?.toMap(),
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<EndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'maxReturn': ?maxReturn,
      'monitorConfig': ?monitorConfig?.toMap(),
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
      allowedEndpointRecordTypes: (() { final guardedValue = map['allowedEndpointRecordTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return DnsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointResponse>(guardedValue, (value) => EndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxReturn: (() { final guardedValue = map['maxReturn']; if (guardedValue == null) return null; return guardedValue as double; })(),
      monitorConfig: (() { final guardedValue = map['monitorConfig']; if (guardedValue == null) return null; return MonitorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileStatus: (() { final guardedValue = map['profileStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trafficRoutingMethod: (() { final guardedValue = map['trafficRoutingMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficViewEnrollmentStatus: (() { final guardedValue = map['trafficViewEnrollmentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

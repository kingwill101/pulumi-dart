// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_manager_profile_dns_config.dart';
import 'get_traffic_manager_profile_monitor_config.dart';

/// Result data returned by getTrafficManagerProfile.
class GetTrafficManagerProfileResult {
  /// This block specifies the DNS configuration of the Profile.
  final List<GetTrafficManagerProfileDnsConfig>? dnsConfigs;
  /// The FQDN of the created Profile.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// This block specifies the Endpoint monitoring configuration for the Profile.
  final List<GetTrafficManagerProfileMonitorConfig>? monitorConfigs;
  /// The name of the custom header.
  final String? name;
  /// The status of the profile.
  final String? profileStatus;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// Specifies the algorithm used to route traffic.
  final String? trafficRoutingMethod;
  /// Indicates whether Traffic View is enabled for the Traffic Manager profile.
  final bool? trafficViewEnabled;

  /// Creates a new [GetTrafficManagerProfileResult].
  /// [dnsConfigs] This block specifies the DNS configuration of the Profile.
  /// [fqdn] The FQDN of the created Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [monitorConfigs] This block specifies the Endpoint monitoring configuration for the Profile.
  /// [name] The name of the custom header.
  /// [profileStatus] The status of the profile.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trafficRoutingMethod] Specifies the algorithm used to route traffic.
  /// [trafficViewEnabled] Indicates whether Traffic View is enabled for the Traffic Manager profile.
  const GetTrafficManagerProfileResult({
    this.dnsConfigs,
    this.fqdn,
    this.id,
    this.monitorConfigs,
    this.name,
    this.profileStatus,
    this.resourceGroupName,
    this.tags,
    this.trafficRoutingMethod,
    this.trafficViewEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsConfigs': ?(() { final guardedValue = dnsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTrafficManagerProfileDnsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fqdn': ?fqdn,
      'id': ?id,
      'monitorConfigs': ?(() { final guardedValue = monitorConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTrafficManagerProfileMonitorConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'profileStatus': ?profileStatus,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'trafficRoutingMethod': ?trafficRoutingMethod,
      'trafficViewEnabled': ?trafficViewEnabled,
    };
  }

  factory GetTrafficManagerProfileResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerProfileResult(
      dnsConfigs: (() { final guardedValue = map['dnsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTrafficManagerProfileDnsConfig>(guardedValue, (value) => GetTrafficManagerProfileDnsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitorConfigs: (() { final guardedValue = map['monitorConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTrafficManagerProfileMonitorConfig>(guardedValue, (value) => GetTrafficManagerProfileMonitorConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileStatus: (() { final guardedValue = map['profileStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trafficRoutingMethod: (() { final guardedValue = map['trafficRoutingMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficViewEnabled: (() { final guardedValue = map['trafficViewEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

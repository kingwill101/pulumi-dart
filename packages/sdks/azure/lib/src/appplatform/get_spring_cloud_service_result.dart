// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_service_config_server_git_setting.dart';
import 'get_spring_cloud_service_required_network_traffic_rule.dart';

/// Result data returned by getSpringCloudService.
class GetSpringCloudServiceResult {
  /// A `configServerGitSetting` block as defined below.
  final List<GetSpringCloudServiceConfigServerGitSetting>? configServerGitSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location of Spring Cloud Service.
  final String? location;
  /// The name to identify on the Git repository.
  final String? name;
  /// A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  final List<String>? outboundPublicIpAddresses;
  /// A list of `requiredNetworkTrafficRules` blocks as defined below.
  final List<GetSpringCloudServiceRequiredNetworkTrafficRule>? requiredNetworkTrafficRules;
  final String? resourceGroupName;
  /// A mapping of tags assigned to Spring Cloud Service.
  final Map<String, String>? tags;

  /// Creates a new [GetSpringCloudServiceResult].
  /// [configServerGitSettings] A `configServerGitSetting` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of Spring Cloud Service.
  /// [name] The name to identify on the Git repository.
  /// [outboundPublicIpAddresses] A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  /// [requiredNetworkTrafficRules] A list of `requiredNetworkTrafficRules` blocks as defined below.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to Spring Cloud Service.
  const GetSpringCloudServiceResult({
    this.configServerGitSettings,
    this.id,
    this.location,
    this.name,
    this.outboundPublicIpAddresses,
    this.requiredNetworkTrafficRules,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configServerGitSettings': ?(() { final guardedValue = configServerGitSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'outboundPublicIpAddresses': ?outboundPublicIpAddresses,
      'requiredNetworkTrafficRules': ?(() { final guardedValue = requiredNetworkTrafficRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpringCloudServiceRequiredNetworkTrafficRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetSpringCloudServiceResult.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceResult(
      configServerGitSettings: (() { final guardedValue = map['configServerGitSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSetting>(guardedValue, (value) => GetSpringCloudServiceConfigServerGitSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundPublicIpAddresses: (() { final guardedValue = map['outboundPublicIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      requiredNetworkTrafficRules: (() { final guardedValue = map['requiredNetworkTrafficRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpringCloudServiceRequiredNetworkTrafficRule>(guardedValue, (value) => GetSpringCloudServiceRequiredNetworkTrafficRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

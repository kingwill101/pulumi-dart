// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_service_config_server_git_setting.dart';
import 'get_spring_cloud_service_required_network_traffic_rule.dart';

/// Result data returned by getSpringCloudService.
class GetSpringCloudServiceResult {
  /// A `config_server_git_setting` block as defined below.
  final List<GetSpringCloudServiceConfigServerGitSetting> configServerGitSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location of Spring Cloud Service.
  final String location;
  /// The name to identify on the Git repository.
  final String name;
  /// A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  final List<String> outboundPublicIpAddresses;
  /// A list of `required_network_traffic_rules` blocks as defined below.
  final List<GetSpringCloudServiceRequiredNetworkTrafficRule> requiredNetworkTrafficRules;
  final String resourceGroupName;
  /// A mapping of tags assigned to Spring Cloud Service.
  final Map<String, String> tags;

  /// Creates a new [GetSpringCloudServiceResult].
  /// [configServerGitSettings] A `config_server_git_setting` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of Spring Cloud Service.
  /// [name] The name to identify on the Git repository.
  /// [outboundPublicIpAddresses] A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  /// [requiredNetworkTrafficRules] A list of `required_network_traffic_rules` blocks as defined below.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to Spring Cloud Service.
  GetSpringCloudServiceResult({
    required this.configServerGitSettings,
    required this.id,
    required this.location,
    required this.name,
    required this.outboundPublicIpAddresses,
    required this.requiredNetworkTrafficRules,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configServerGitSettings': pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSetting, Map<String, dynamic>>(configServerGitSettings, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'outboundPublicIpAddresses': outboundPublicIpAddresses,
      'requiredNetworkTrafficRules': pulumi.Input.encodeList<GetSpringCloudServiceRequiredNetworkTrafficRule, Map<String, dynamic>>(requiredNetworkTrafficRules, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetSpringCloudServiceResult.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceResult(
      configServerGitSettings: pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSetting>(map['configServerGitSettings']!, (value) => GetSpringCloudServiceConfigServerGitSetting.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outboundPublicIpAddresses: (map['outboundPublicIpAddresses'] as List).cast<String>(),
      requiredNetworkTrafficRules: pulumi.Input.decodeList<GetSpringCloudServiceRequiredNetworkTrafficRule>(map['requiredNetworkTrafficRules']!, (value) => GetSpringCloudServiceRequiredNetworkTrafficRule.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}


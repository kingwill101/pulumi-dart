// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_nat_ip_configuration.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// The alias is a globally unique name for your private link service which Azure generates for you. Your can use this alias to request a connection to your private link service.
  final String alias;

  /// The list of subscription(s) globally unique identifiers that will be auto approved to use the private link service.
  final List<String> autoApprovalSubscriptionIds;

  /// Does the Private Link Service support the Proxy Protocol?
  final bool enableProxyProtocol;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The list of Standard Load Balancer(SLB) resource IDs. The Private Link service is tied to the frontend IP address of a SLB. All traffic destined for the private link service will reach the frontend of the SLB. You can configure SLB rules to direct this traffic to appropriate backend pools where your applications are running.
  final List<String> loadBalancerFrontendIpConfigurationIds;

  /// The supported Azure location where the resource exists.
  final String location;

  /// The name of private link service NAT IP configuration.
  final String name;

  /// The `nat_ip_configuration` block as defined below.
  final List<GetServiceNatIpConfiguration> natIpConfigurations;
  final String resourceGroupName;

  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// The list of subscription(s) globally unique identifiers(GUID) that will be able to see the private link service.
  final List<String> visibilitySubscriptionIds;

  /// Creates a new [GetServiceResult].
  /// [alias] The alias is a globally unique name for your private link service which Azure generates for you. Your can use this alias to request a connection to your private link service.
  /// [autoApprovalSubscriptionIds] The list of subscription(s) globally unique identifiers that will be auto approved to use the private link service.
  /// [enableProxyProtocol] Does the Private Link Service support the Proxy Protocol?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerFrontendIpConfigurationIds] The list of Standard Load Balancer(SLB) resource IDs. The Private Link service is tied to the frontend IP address of a SLB. All traffic destined for the private link service will reach the frontend of the SLB. You can configure SLB rules to direct this traffic to appropriate backend pools where your applications are running.
  /// [location] The supported Azure location where the resource exists.
  /// [name] The name of private link service NAT IP configuration.
  /// [natIpConfigurations] The `nat_ip_configuration` block as defined below.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the resource.
  /// [visibilitySubscriptionIds] The list of subscription(s) globally unique identifiers(GUID) that will be able to see the private link service.
  GetServiceResult({
    required this.alias,
    required this.autoApprovalSubscriptionIds,
    required this.enableProxyProtocol,
    required this.id,
    required this.loadBalancerFrontendIpConfigurationIds,
    required this.location,
    required this.name,
    required this.natIpConfigurations,
    required this.resourceGroupName,
    required this.tags,
    required this.visibilitySubscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'autoApprovalSubscriptionIds': autoApprovalSubscriptionIds,
      'enableProxyProtocol': enableProxyProtocol,
      'id': id,
      'loadBalancerFrontendIpConfigurationIds':
          loadBalancerFrontendIpConfigurationIds,
      'location': location,
      'name': name,
      'natIpConfigurations':
          pulumi.Input.encodeList<
            GetServiceNatIpConfiguration,
            Map<String, dynamic>
          >(natIpConfigurations, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'visibilitySubscriptionIds': visibilitySubscriptionIds,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      alias: map['alias'] as String,
      autoApprovalSubscriptionIds: (map['autoApprovalSubscriptionIds'] as List)
          .cast<String>(),
      enableProxyProtocol: map['enableProxyProtocol'] as bool,
      id: map['id'] as String,
      loadBalancerFrontendIpConfigurationIds:
          (map['loadBalancerFrontendIpConfigurationIds'] as List)
              .cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      natIpConfigurations:
          pulumi.Input.decodeList<GetServiceNatIpConfiguration>(
            map['natIpConfigurations']!,
            (value) => GetServiceNatIpConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      visibilitySubscriptionIds: (map['visibilitySubscriptionIds'] as List)
          .cast<String>(),
    );
  }
}

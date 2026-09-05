// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_nat_ip_configuration.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// The alias is a globally unique name for your private link service which Azure generates for you. Your can use this alias to request a connection to your private link service.
  final String? alias;
  /// The list of subscription(s) globally unique identifiers that will be auto approved to use the private link service.
  final List<String>? autoApprovalSubscriptionIds;
  /// Does the Private Link Service support the Proxy Protocol?
  final bool? enableProxyProtocol;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of Standard Load Balancer(SLB) resource IDs. The Private Link service is tied to the frontend IP address of a SLB. All traffic destined for the private link service will reach the frontend of the SLB. You can configure SLB rules to direct this traffic to appropriate backend pools where your applications are running.
  final List<String>? loadBalancerFrontendIpConfigurationIds;
  /// The supported Azure location where the resource exists.
  final String? location;
  /// The name of private link service NAT IP configuration.
  final String? name;
  /// The `natIpConfiguration` block as defined below.
  final List<GetServiceNatIpConfiguration>? natIpConfigurations;
  final bool? proxyProtocolEnabled;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The list of subscription(s) globally unique identifiers(GUID) that will be able to see the private link service.
  final List<String>? visibilitySubscriptionIds;

  /// Creates a new [GetServiceResult].
  /// [alias] The alias is a globally unique name for your private link service which Azure generates for you. Your can use this alias to request a connection to your private link service.
  /// [autoApprovalSubscriptionIds] The list of subscription(s) globally unique identifiers that will be auto approved to use the private link service.
  /// [enableProxyProtocol] Does the Private Link Service support the Proxy Protocol?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerFrontendIpConfigurationIds] The list of Standard Load Balancer(SLB) resource IDs. The Private Link service is tied to the frontend IP address of a SLB. All traffic destined for the private link service will reach the frontend of the SLB. You can configure SLB rules to direct this traffic to appropriate backend pools where your applications are running.
  /// [location] The supported Azure location where the resource exists.
  /// [name] The name of private link service NAT IP configuration.
  /// [natIpConfigurations] The `natIpConfiguration` block as defined below.
  /// [proxyProtocolEnabled] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [visibilitySubscriptionIds] The list of subscription(s) globally unique identifiers(GUID) that will be able to see the private link service.
  const GetServiceResult({
    this.alias,
    this.autoApprovalSubscriptionIds,
    this.enableProxyProtocol,
    this.id,
    this.loadBalancerFrontendIpConfigurationIds,
    this.location,
    this.name,
    this.natIpConfigurations,
    this.proxyProtocolEnabled,
    this.resourceGroupName,
    this.tags,
    this.visibilitySubscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'autoApprovalSubscriptionIds': ?autoApprovalSubscriptionIds,
      'enableProxyProtocol': ?enableProxyProtocol,
      'id': ?id,
      'loadBalancerFrontendIpConfigurationIds': ?loadBalancerFrontendIpConfigurationIds,
      'location': ?location,
      'name': ?name,
      'natIpConfigurations': ?(() { final guardedValue = natIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceNatIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'proxyProtocolEnabled': ?proxyProtocolEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'visibilitySubscriptionIds': ?visibilitySubscriptionIds,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoApprovalSubscriptionIds: (() { final guardedValue = map['autoApprovalSubscriptionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      enableProxyProtocol: (() { final guardedValue = map['enableProxyProtocol']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerFrontendIpConfigurationIds: (() { final guardedValue = map['loadBalancerFrontendIpConfigurationIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natIpConfigurations: (() { final guardedValue = map['natIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceNatIpConfiguration>(guardedValue, (value) => GetServiceNatIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      proxyProtocolEnabled: (() { final guardedValue = map['proxyProtocolEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      visibilitySubscriptionIds: (() { final guardedValue = map['visibilitySubscriptionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

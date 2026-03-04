// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_service_nat_ip_configuration.dart';

/// Input properties used for looking up and filtering LinkService resources.
class LinkServiceState {
  /// A globally unique DNS Name for your Private Link Service. You can use this alias to request a connection to your Private Link Service.
  final pulumi.Input<String>? alias;

  /// A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service.
  final pulumi.Input<List<String>>? autoApprovalSubscriptionIds;

  /// The destination IP address of the Private Link Service.
  final pulumi.Input<String>? destinationIpAddress;

  /// Should the Private Link Service support the Proxy Protocol?
  final pulumi.Input<bool>? enableProxyProtocol;

  /// List of FQDNs allowed for the Private Link Service.
  final pulumi.Input<List<String>>? fqdns;

  /// A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? loadBalancerFrontendIpConfigurationIds;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of this Private Link Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// One or more (up to 8) `nat_ip_configuration` block as defined below.
  final pulumi.Input<List<LinkServiceNatIpConfiguration>>? natIpConfigurations;

  /// The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// A list of Subscription UUID/GUID's that will be able to see this Private Link Service.
  ///
  /// &gt; **Note:** If no Subscription IDs are specified then Azure allows every Subscription to see this Private Link Service.
  final pulumi.Input<List<String>>? visibilitySubscriptionIds;

  /// Creates a new [LinkServiceState].
  /// [alias] A globally unique DNS Name for your Private Link Service. You can use this alias to request a connection to your Private Link Service.
  /// [autoApprovalSubscriptionIds] A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service.
  /// [destinationIpAddress] The destination IP address of the Private Link Service.
  /// [enableProxyProtocol] Should the Private Link Service support the Proxy Protocol?
  /// [fqdns] List of FQDNs allowed for the Private Link Service.
  /// [loadBalancerFrontendIpConfigurationIds] A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Private Link Service. Changing this forces a new resource to be created.
  /// [natIpConfigurations] One or more (up to 8) `nat_ip_configuration` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [visibilitySubscriptionIds] A list of Subscription UUID/GUID's that will be able to see this Private Link Service.
  LinkServiceState({
    this.alias,
    this.autoApprovalSubscriptionIds,
    this.destinationIpAddress,
    this.enableProxyProtocol,
    this.fqdns,
    this.loadBalancerFrontendIpConfigurationIds,
    this.location,
    this.name,
    this.natIpConfigurations,
    this.resourceGroupName,
    this.tags,
    this.visibilitySubscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'autoApprovalSubscriptionIds': ?autoApprovalSubscriptionIds,
      'destinationIpAddress': ?destinationIpAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'fqdns': ?fqdns,
      'loadBalancerFrontendIpConfigurationIds':
          ?loadBalancerFrontendIpConfigurationIds,
      'location': ?location,
      'name': ?name,
      'natIpConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinkServiceNatIpConfiguration>,
            List<Map<String, dynamic>>
          >(
            natIpConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  LinkServiceNatIpConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'visibilitySubscriptionIds': ?visibilitySubscriptionIds,
    };
  }

  factory LinkServiceState.fromMap(Map<String, dynamic> map) {
    return LinkServiceState(
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoApprovalSubscriptionIds: (() {
        final guardedValue = map['autoApprovalSubscriptionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationIpAddress: (() {
        final guardedValue = map['destinationIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableProxyProtocol: (() {
        final guardedValue = map['enableProxyProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fqdns: (() {
        final guardedValue = map['fqdns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loadBalancerFrontendIpConfigurationIds: (() {
        final guardedValue = map['loadBalancerFrontendIpConfigurationIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natIpConfigurations: (() {
        final guardedValue = map['natIpConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LinkServiceNatIpConfiguration>(
            guardedValue,
            (value) => LinkServiceNatIpConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      visibilitySubscriptionIds: (() {
        final guardedValue = map['visibilitySubscriptionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

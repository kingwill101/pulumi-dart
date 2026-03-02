// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_endpoint_filter.dart';

class NetworkConnectionMonitorEndpoint {
  /// The IP address or domain name of the Network Connection Monitor endpoint.
  final pulumi.Input<String>? address;
  /// The test coverage for the Network Connection Monitor endpoint. Possible values are `AboveAverage`, `Average`, `BelowAverage`, `Default`, `Full` and `Low`.
  final pulumi.Input<String>? coverageLevel;
  /// A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint.
  final pulumi.Input<List<String>>? excludedIpAddresses;
  /// A `filter` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorEndpointFilter>? filter;
  /// A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint.
  final pulumi.Input<List<String>>? includedIpAddresses;
  /// The name of the endpoint for the Network Connection Monitor .
  final pulumi.Input<String> name;
  /// The resource ID which is used as the endpoint by the Network Connection Monitor.
  final pulumi.Input<String>? targetResourceId;
  /// The endpoint type of the Network Connection Monitor. Possible values are `AzureArcVM`, `AzureSubnet`, `AzureVM`, `AzureVNet`, `ExternalAddress`, `MMAWorkspaceMachine` and `MMAWorkspaceNetwork`.
  final pulumi.Input<String>? targetResourceType;

  /// Creates a new [NetworkConnectionMonitorEndpoint].
  /// [address] The IP address or domain name of the Network Connection Monitor endpoint.
  /// [coverageLevel] The test coverage for the Network Connection Monitor endpoint. Possible values are `AboveAverage`, `Average`, `BelowAverage`, `Default`, `Full` and `Low`.
  /// [excludedIpAddresses] A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint.
  /// [filter] A `filter` block as defined below.
  /// [includedIpAddresses] A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint.
  /// [name] The name of the endpoint for the Network Connection Monitor .
  /// [targetResourceId] The resource ID which is used as the endpoint by the Network Connection Monitor.
  /// [targetResourceType] The endpoint type of the Network Connection Monitor. Possible values are `AzureArcVM`, `AzureSubnet`, `AzureVM`, `AzureVNet`, `ExternalAddress`, `MMAWorkspaceMachine` and `MMAWorkspaceNetwork`.
  NetworkConnectionMonitorEndpoint({
    this.address,
    this.coverageLevel,
    this.excludedIpAddresses,
    this.filter,
    this.includedIpAddresses,
    required this.name,
    this.targetResourceId,
    this.targetResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'coverageLevel': ?coverageLevel,
      'excludedIpAddresses': ?excludedIpAddresses,
      'filter': ?pulumi.Input.mapOptionalInputValue<NetworkConnectionMonitorEndpointFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includedIpAddresses': ?includedIpAddresses,
      'name': name,
      'targetResourceId': ?targetResourceId,
      'targetResourceType': ?targetResourceType,
    };
  }

  factory NetworkConnectionMonitorEndpoint.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorEndpoint(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      coverageLevel: map['coverageLevel'] == null ? null : (map['coverageLevel']! as String).input(),
      excludedIpAddresses: map['excludedIpAddresses'] == null ? null : ((map['excludedIpAddresses']! as List).cast<String>()).input(),
      filter: map['filter'] == null ? null : (NetworkConnectionMonitorEndpointFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      includedIpAddresses: map['includedIpAddresses'] == null ? null : ((map['includedIpAddresses']! as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
      targetResourceType: map['targetResourceType'] == null ? null : (map['targetResourceType']! as String).input(),
    );
  }
}


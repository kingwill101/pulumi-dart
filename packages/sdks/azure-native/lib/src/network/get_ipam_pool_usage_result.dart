// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_basics_response.dart';

/// Result data returned by getIpamPoolUsage.
class GetIpamPoolUsageResult {
  /// List of IP address prefixes of the resource.
  final List<String> addressPrefixes;

  /// List of assigned IP address prefixes.
  final List<String> allocatedAddressPrefixes;

  /// List of available IP address prefixes.
  final List<String> availableAddressPrefixes;

  /// List of IpamPool that are children of this IpamPool.
  final List<ResourceBasicsResponse> childPools;

  /// Total number of assigned IP addresses in the IpamPool.
  final String numberOfAllocatedIPAddresses;

  /// Total number of available IP addresses in the IpamPool.
  final String numberOfAvailableIPAddresses;

  /// Total number of reserved IP addresses in the IpamPool.
  final String numberOfReservedIPAddresses;

  /// List of reserved IP address prefixes. These IP addresses could be reclaimed if not assigned in the given time.
  final List<String> reservedAddressPrefixes;

  /// Total number of IP addresses managed in the IpamPool.
  final String totalNumberOfIPAddresses;

  /// Creates a new [GetIpamPoolUsageResult].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [allocatedAddressPrefixes] List of assigned IP address prefixes.
  /// [availableAddressPrefixes] List of available IP address prefixes.
  /// [childPools] List of IpamPool that are children of this IpamPool.
  /// [numberOfAllocatedIPAddresses] Total number of assigned IP addresses in the IpamPool.
  /// [numberOfAvailableIPAddresses] Total number of available IP addresses in the IpamPool.
  /// [numberOfReservedIPAddresses] Total number of reserved IP addresses in the IpamPool.
  /// [reservedAddressPrefixes] List of reserved IP address prefixes. These IP addresses could be reclaimed if not assigned in the given time.
  /// [totalNumberOfIPAddresses] Total number of IP addresses managed in the IpamPool.
  GetIpamPoolUsageResult({
    required this.addressPrefixes,
    required this.allocatedAddressPrefixes,
    required this.availableAddressPrefixes,
    required this.childPools,
    required this.numberOfAllocatedIPAddresses,
    required this.numberOfAvailableIPAddresses,
    required this.numberOfReservedIPAddresses,
    required this.reservedAddressPrefixes,
    required this.totalNumberOfIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'allocatedAddressPrefixes': allocatedAddressPrefixes,
      'availableAddressPrefixes': availableAddressPrefixes,
      'childPools':
          pulumi.Input.encodeList<ResourceBasicsResponse, Map<String, dynamic>>(
            childPools,
            (value) => value.toMap(),
          ),
      'numberOfAllocatedIPAddresses': numberOfAllocatedIPAddresses,
      'numberOfAvailableIPAddresses': numberOfAvailableIPAddresses,
      'numberOfReservedIPAddresses': numberOfReservedIPAddresses,
      'reservedAddressPrefixes': reservedAddressPrefixes,
      'totalNumberOfIPAddresses': totalNumberOfIPAddresses,
    };
  }

  factory GetIpamPoolUsageResult.fromMap(Map<String, dynamic> map) {
    return GetIpamPoolUsageResult(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      allocatedAddressPrefixes: (map['allocatedAddressPrefixes'] as List)
          .cast<String>(),
      availableAddressPrefixes: (map['availableAddressPrefixes'] as List)
          .cast<String>(),
      childPools: pulumi.Input.decodeList<ResourceBasicsResponse>(
        map['childPools']!,
        (value) => ResourceBasicsResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      numberOfAllocatedIPAddresses:
          map['numberOfAllocatedIPAddresses'] as String,
      numberOfAvailableIPAddresses:
          map['numberOfAvailableIPAddresses'] as String,
      numberOfReservedIPAddresses: map['numberOfReservedIPAddresses'] as String,
      reservedAddressPrefixes: (map['reservedAddressPrefixes'] as List)
          .cast<String>(),
      totalNumberOfIPAddresses: map['totalNumberOfIPAddresses'] as String,
    );
  }
}

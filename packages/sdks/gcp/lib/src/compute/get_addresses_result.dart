// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addresses_address.dart';

/// Result data returned by getAddresses.
class GetAddressesResult {
  /// A list of addresses matching the filter. Structure is defined below.
  final List<GetAddressesAddress> addresses;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String project;
  /// The region in which the address resides.
  final String? region;

  /// Creates a new [GetAddressesResult].
  /// [addresses] A list of addresses matching the filter. Structure is defined below.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Required.
  /// [region] The region in which the address resides.
  GetAddressesResult({
    required this.addresses,
    this.filter,
    required this.id,
    required this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetAddressesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'filter': ?filter,
      'id': id,
      'project': project,
      'region': ?region,
    };
  }

  factory GetAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetAddressesResult(
      addresses: pulumi.Input.decodeList<GetAddressesAddress>(map['addresses']!, (value) => GetAddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      project: map['project'] as String,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}


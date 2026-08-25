// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addresses_address.dart';

/// Result data returned by getAddresses.
class GetAddressesResult {
  /// A list of addresses matching the filter. Structure is defined below.
  final List<GetAddressesAddress>? addresses;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  /// The region in which the address resides.
  final String? region;

  /// Creates a new [GetAddressesResult].
  /// [addresses] A list of addresses matching the filter. Structure is defined below.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [region] The region in which the address resides.
  const GetAddressesResult({
    this.addresses,
    this.filter,
    this.id,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?(() { final guardedValue = addresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAddressesAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter,
      'id': ?id,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetAddressesResult(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAddressesAddress>(guardedValue, (value) => GetAddressesAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

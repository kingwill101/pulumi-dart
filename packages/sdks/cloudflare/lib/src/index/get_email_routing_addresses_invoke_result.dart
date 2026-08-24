// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_addresses_result.dart';

/// Result data returned by getEmailRoutingAddresses.
class GetEmailRoutingAddressesInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Sorts results in an ascending or descending order.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetEmailRoutingAddressesResult>? results;
  /// Filter by verified destination addresses.
  final bool? verified;

  /// Creates a new [GetEmailRoutingAddressesInvokeResult].
  /// [accountId] Identifier.
  /// [direction] Sorts results in an ascending or descending order.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [verified] Filter by verified destination addresses.
  const GetEmailRoutingAddressesInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.results,
    this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingAddressesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'verified': ?verified,
    };
  }

  factory GetEmailRoutingAddressesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingAddressesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingAddressesResult>(guardedValue, (value) => GetEmailRoutingAddressesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      verified: (() { final guardedValue = map['verified']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

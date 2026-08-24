// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_routing_addresses_get_email_routing_addresses_args_doc}
/// Arguments for getEmailRoutingAddresses.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_addresses_get_email_routing_addresses_args_doc}
class GetEmailRoutingAddressesArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Sorts results in an ascending or descending order.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by verified destination addresses.
  final pulumi.Input<bool?>? verified;

  /// Creates a new [GetEmailRoutingAddressesArgs].
  /// [accountId] Identifier.
  /// [direction] Sorts results in an ascending or descending order.
  /// [maxItems] Max items to fetch, default: 1000
  /// [verified] Filter by verified destination addresses.
  const GetEmailRoutingAddressesArgs({
    this.accountId,
    this.direction,
    this.maxItems,
    this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'verified': ?verified,
    };
  }

  factory GetEmailRoutingAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingAddressesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      verified: (() { final guardedValue = map['verified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

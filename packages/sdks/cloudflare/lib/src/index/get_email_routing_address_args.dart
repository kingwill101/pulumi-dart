// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_address_filter.dart';

/// {@template pulumi_index_get_email_routing_address_get_email_routing_address_args_doc}
/// Arguments for getEmailRoutingAddress.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_address_get_email_routing_address_args_doc}
class GetEmailRoutingAddressArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Destination address identifier.
  final pulumi.Input<String?>? destinationAddressIdentifier;
  final pulumi.Input<GetEmailRoutingAddressFilter?>? filter;

  /// Creates a new [GetEmailRoutingAddressArgs].
  /// [accountId] Identifier.
  /// [destinationAddressIdentifier] Destination address identifier.
  /// [filter] Optional.
  const GetEmailRoutingAddressArgs({
    this.accountId,
    this.destinationAddressIdentifier,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'destinationAddressIdentifier': ?destinationAddressIdentifier,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailRoutingAddressFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetEmailRoutingAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingAddressArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddressIdentifier: (() { final guardedValue = map['destinationAddressIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailRoutingAddressFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

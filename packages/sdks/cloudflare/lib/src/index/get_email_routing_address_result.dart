// ignore_for_file: unused_element, unnecessary_cast

import 'get_email_routing_address_filter.dart';

/// Result data returned by getEmailRoutingAddress.
class GetEmailRoutingAddressResult {
  /// Identifier.
  final String? accountId;
  /// The date and time the destination address has been created.
  final String? created;
  /// Destination address identifier.
  final String? destinationAddressIdentifier;
  /// The contact email address of the user.
  final String? email;
  final GetEmailRoutingAddressFilter? filter;
  /// Destination address identifier.
  final String? id;
  /// The date and time the destination address was last modified.
  final String? modified;
  /// Destination address tag. (Deprecated, replaced by destination address identifier)
  final String? tag;
  /// The date and time the destination address has been verified. Null means not verified yet.
  final String? verified;

  /// Creates a new [GetEmailRoutingAddressResult].
  /// [accountId] Identifier.
  /// [created] The date and time the destination address has been created.
  /// [destinationAddressIdentifier] Destination address identifier.
  /// [email] The contact email address of the user.
  /// [filter] Optional.
  /// [id] Destination address identifier.
  /// [modified] The date and time the destination address was last modified.
  /// [tag] Destination address tag. (Deprecated, replaced by destination address identifier)
  /// [verified] The date and time the destination address has been verified. Null means not verified yet.
  const GetEmailRoutingAddressResult({
    this.accountId,
    this.created,
    this.destinationAddressIdentifier,
    this.email,
    this.filter,
    this.id,
    this.modified,
    this.tag,
    this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'destinationAddressIdentifier': ?destinationAddressIdentifier,
      'email': ?email,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'modified': ?modified,
      'tag': ?tag,
      'verified': ?verified,
    };
  }

  factory GetEmailRoutingAddressResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingAddressResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationAddressIdentifier: (() { final guardedValue = map['destinationAddressIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEmailRoutingAddressFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verified: (() { final guardedValue = map['verified']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

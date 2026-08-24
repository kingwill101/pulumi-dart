// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddressMapMembership {
  /// The identifier for the membership (eg. a zone or account tag).
  final pulumi.Input<String?>? identifier;
  /// The type of the membership.
  /// Available values: "zone", "account".
  final pulumi.Input<String?>? kind;

  /// Creates a new [AddressMapMembership].
  /// [identifier] The identifier for the membership (eg. a zone or account tag).
  /// [kind] The type of the membership.
  const AddressMapMembership({
    this.identifier,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'kind': ?kind,
    };
  }

  factory AddressMapMembership.fromMap(Map<String, dynamic> map) {
    return AddressMapMembership(
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

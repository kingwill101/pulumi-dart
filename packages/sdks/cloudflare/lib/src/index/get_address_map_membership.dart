// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressMapMembership {
  /// Controls whether the membership can be deleted via the API or not.
  final pulumi.Input<bool> canDelete;
  final pulumi.Input<String> createdAt;
  /// The identifier for the membership (eg. a zone or account tag).
  final pulumi.Input<String> identifier;
  /// The type of the membership.
  /// Available values: "zone", "account".
  final pulumi.Input<String> kind;

  /// Creates a new [GetAddressMapMembership].
  /// [canDelete] Controls whether the membership can be deleted via the API or not.
  /// [createdAt] Required.
  /// [identifier] The identifier for the membership (eg. a zone or account tag).
  /// [kind] The type of the membership.
  const GetAddressMapMembership({
    required this.canDelete,
    required this.createdAt,
    required this.identifier,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canDelete': canDelete,
      'createdAt': createdAt,
      'identifier': identifier,
      'kind': kind,
    };
  }

  factory GetAddressMapMembership.fromMap(Map<String, dynamic> map) {
    return GetAddressMapMembership(
      canDelete: pulumi.Input.fromValue(map['canDelete'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

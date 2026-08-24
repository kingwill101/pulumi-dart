// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingAddressesResult {
  /// The date and time the destination address has been created.
  final pulumi.Input<String> created;
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Destination address identifier.
  final pulumi.Input<String> id;
  /// The date and time the destination address was last modified.
  final pulumi.Input<String> modified;
  /// Destination address tag. (Deprecated, replaced by destination address identifier)
  final pulumi.Input<String> tag;
  /// The date and time the destination address has been verified. Null means not verified yet.
  final pulumi.Input<String> verified;

  /// Creates a new [GetEmailRoutingAddressesResult].
  /// [created] The date and time the destination address has been created.
  /// [email] The contact email address of the user.
  /// [id] Destination address identifier.
  /// [modified] The date and time the destination address was last modified.
  /// [tag] Destination address tag. (Deprecated, replaced by destination address identifier)
  /// [verified] The date and time the destination address has been verified. Null means not verified yet.
  const GetEmailRoutingAddressesResult({
    required this.created,
    required this.email,
    required this.id,
    required this.modified,
    required this.tag,
    required this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'email': email,
      'id': id,
      'modified': modified,
      'tag': tag,
      'verified': verified,
    };
  }

  factory GetEmailRoutingAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingAddressesResult(
      created: pulumi.Input.fromValue(map['created'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      verified: pulumi.Input.fromValue(map['verified'] as String),
    );
  }
}

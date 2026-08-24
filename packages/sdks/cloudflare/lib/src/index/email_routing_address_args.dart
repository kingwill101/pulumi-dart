// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_routing_address_email_routing_address_args_doc}
/// The set of arguments for EmailRoutingAddress.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_address_email_routing_address_args_doc}
class EmailRoutingAddressArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Destination address status. Non-admin callers may only set verified addresses back to unverified; setting to verified requires admin privileges.
  /// Available values: "unverified", "verified".
  final pulumi.Input<String?>? status;

  /// Creates a new [EmailRoutingAddressArgs].
  /// [accountId] Identifier.
  /// [email] The contact email address of the user.
  /// [status] Destination address status. Non-admin callers may only set verified addresses back to unverified; setting to verified requires admin privileges.
  const EmailRoutingAddressArgs({
    required this.accountId,
    required this.email,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'email': email,
      'status': ?status,
    };
  }

  factory EmailRoutingAddressArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingAddressArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

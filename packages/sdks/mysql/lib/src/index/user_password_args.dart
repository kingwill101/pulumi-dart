// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_password_user_password_args_doc}
/// The set of arguments for UserPassword.
/// {@endtemplate}
/// {@macro pulumi_index_user_password_user_password_args_doc}
class UserPasswordArgs {
  /// The source host of the user. Defaults to `localhost`.
  final pulumi.Input<String>? host;
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`.
  final pulumi.Input<String> pgpKey;
  /// The IAM user to associate with this access key.
  final pulumi.Input<String> user;

  /// Creates a new [UserPasswordArgs].
  /// [host] The source host of the user. Defaults to `localhost`.
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`.
  /// [user] The IAM user to associate with this access key.
  const UserPasswordArgs({
    this.host,
    required this.pgpKey,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'pgpKey': pgpKey,
      'user': user,
    };
  }

  factory UserPasswordArgs.fromMap(Map<String, dynamic> map) {
    return UserPasswordArgs(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pgpKey: pulumi.Input.fromValue(map['pgpKey'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}

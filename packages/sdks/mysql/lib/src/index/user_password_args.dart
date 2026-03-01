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
  UserPasswordArgs({
    pulumi.Output<String>? host,
    required pulumi.Output<String> pgpKey,
    required pulumi.Output<String> user,
  }) :
      host = pulumi.Input.asOptionalInput<String>(host),
      pgpKey = pulumi.Input.asInput<String>(pgpKey),
      user = pulumi.Input.asInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'pgpKey': pgpKey,
      'user': user,
    };
  }

  factory UserPasswordArgs.fromMap(Map<String, dynamic> map) {
    return UserPasswordArgs(
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      pgpKey: pulumi.Output.create<String>(map['pgpKey'] as String),
      user: pulumi.Output.create<String>(map['user'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_password_password1.dart';
import 'token_password_password2.dart';

/// {@template pulumi_containerservice_token_password_token_password_args_doc}
/// The set of arguments for TokenPassword.
/// {@endtemplate}
/// {@macro pulumi_containerservice_token_password_token_password_args_doc}
class TokenPasswordArgs {
  /// The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created.
  final pulumi.Input<String> containerRegistryTokenId;
  /// One `password` block as defined below.
  final pulumi.Input<TokenPasswordPassword1> password1;
  /// One `password` block as defined below.
  final pulumi.Input<TokenPasswordPassword2>? password2;

  /// Creates a new [TokenPasswordArgs].
  /// [containerRegistryTokenId] The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created.
  /// [password1] One `password` block as defined below.
  /// [password2] One `password` block as defined below.
  TokenPasswordArgs({
    required this.containerRegistryTokenId,
    required this.password1,
    this.password2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryTokenId': containerRegistryTokenId,
      'password1': pulumi.Input.mapInputValue<TokenPasswordPassword1, Map<String, dynamic>>(password1, (value) => value.toMap()),
      'password2': ?pulumi.Input.mapOptionalInputValue<TokenPasswordPassword2, Map<String, dynamic>>(password2, (value) => value.toMap()),
    };
  }

  factory TokenPasswordArgs.fromMap(Map<String, dynamic> map) {
    return TokenPasswordArgs(
      containerRegistryTokenId: pulumi.Input.fromValue(map['containerRegistryTokenId'] as String),
      password1: pulumi.Input.fromValue(TokenPasswordPassword1.fromMap((map['password1']! as Map).cast<String, dynamic>())),
      password2: (() { final guardedValue = map['password2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenPasswordPassword2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


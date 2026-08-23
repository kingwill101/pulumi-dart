// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_token_args_doc}
/// The set of arguments for AccessToken.
/// {@endtemplate}
/// {@macro pulumi_index_access_token_args_doc}
class AccessTokenArgs {
  /// Description of the access token.
  final pulumi.Input<String> description;

  /// Creates a new [AccessTokenArgs].
  /// [description] Description of the access token.
  const AccessTokenArgs({
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
    };
  }

  factory AccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return AccessTokenArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}

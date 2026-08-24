// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_oauth_client_get_oauth_client_args_doc}
/// Arguments for getOauthClient.
/// {@endtemplate}
/// {@macro pulumi_index_get_oauth_client_get_oauth_client_args_doc}
class GetOauthClientArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// The unique identifier for an OAuth client.
  final pulumi.Input<String> oauthClientId;

  /// Creates a new [GetOauthClientArgs].
  /// [accountId] Account identifier tag.
  /// [oauthClientId] The unique identifier for an OAuth client.
  const GetOauthClientArgs({
    required this.accountId,
    required this.oauthClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'oauthClientId': oauthClientId,
    };
  }

  factory GetOauthClientArgs.fromMap(Map<String, dynamic> map) {
    return GetOauthClientArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      oauthClientId: pulumi.Input.fromValue(map['oauthClientId'] as String),
    );
  }
}

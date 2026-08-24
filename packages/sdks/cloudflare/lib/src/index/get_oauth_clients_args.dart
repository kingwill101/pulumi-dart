// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_oauth_clients_get_oauth_clients_args_doc}
/// Arguments for getOauthClients.
/// {@endtemplate}
/// {@macro pulumi_index_get_oauth_clients_get_oauth_clients_args_doc}
class GetOauthClientsArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetOauthClientsArgs].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  const GetOauthClientsArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetOauthClientsArgs.fromMap(Map<String, dynamic> map) {
    return GetOauthClientsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

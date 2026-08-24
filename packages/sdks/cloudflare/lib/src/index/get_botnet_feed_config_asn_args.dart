// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_botnet_feed_config_asn_get_botnet_feed_config_asn_args_doc}
/// Arguments for getBotnetFeedConfigAsn.
/// {@endtemplate}
/// {@macro pulumi_index_get_botnet_feed_config_asn_get_botnet_feed_config_asn_args_doc}
class GetBotnetFeedConfigAsnArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetBotnetFeedConfigAsnArgs].
  /// [accountId] Identifier.
  const GetBotnetFeedConfigAsnArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetBotnetFeedConfigAsnArgs.fromMap(Map<String, dynamic> map) {
    return GetBotnetFeedConfigAsnArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

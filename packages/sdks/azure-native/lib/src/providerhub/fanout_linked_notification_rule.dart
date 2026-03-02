// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule_dsts_configuration.dart';
import 'resource_provider_endpoint.dart';
import 'token_auth_configuration.dart';

class FanoutLinkedNotificationRule {
  /// The actions.
  final pulumi.Input<List<String>>? actions;
  /// The dsts configuration.
  final pulumi.Input<FanoutLinkedNotificationRuleDstsConfiguration>? dstsConfiguration;
  /// The endpoints.
  final pulumi.Input<List<ResourceProviderEndpoint>>? endpoints;
  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfiguration>? tokenAuthConfiguration;

  /// Creates a new [FanoutLinkedNotificationRule].
  /// [actions] The actions.
  /// [dstsConfiguration] The dsts configuration.
  /// [endpoints] The endpoints.
  /// [tokenAuthConfiguration] The token auth configuration.
  FanoutLinkedNotificationRule({
    this.actions,
    this.dstsConfiguration,
    this.endpoints,
    this.tokenAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'dstsConfiguration': ?pulumi.Input.mapOptionalInputValue<FanoutLinkedNotificationRuleDstsConfiguration, Map<String, dynamic>>(dstsConfiguration, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ResourceProviderEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokenAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<TokenAuthConfiguration, Map<String, dynamic>>(tokenAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory FanoutLinkedNotificationRule.fromMap(Map<String, dynamic> map) {
    return FanoutLinkedNotificationRule(
      actions: map['actions'] == null ? null : ((map['actions'] as List).cast<String>()).input(),
      dstsConfiguration: map['dstsConfiguration'] == null ? null : (FanoutLinkedNotificationRuleDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<ResourceProviderEndpoint>(map['endpoints'], (value) => ResourceProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : (TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


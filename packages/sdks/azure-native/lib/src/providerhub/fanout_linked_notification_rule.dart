// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule_dsts_configuration.dart';
import 'resource_provider_endpoint.dart';
import 'token_auth_configuration.dart';

class FanoutLinkedNotificationRule {
  /// The actions.
  final List<String>? actions;
  /// The dsts configuration.
  final FanoutLinkedNotificationRuleDstsConfiguration? dstsConfiguration;
  /// The endpoints.
  final List<ResourceProviderEndpoint>? endpoints;
  /// The token auth configuration.
  final TokenAuthConfiguration? tokenAuthConfiguration;

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
      'dstsConfiguration': ?dstsConfiguration == null ? null : dstsConfiguration!.toMap(),
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<ResourceProviderEndpoint, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'tokenAuthConfiguration': ?tokenAuthConfiguration == null ? null : tokenAuthConfiguration!.toMap(),
    };
  }

  factory FanoutLinkedNotificationRule.fromMap(Map<String, dynamic> map) {
    return FanoutLinkedNotificationRule(
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      dstsConfiguration: map['dstsConfiguration'] == null ? null : FanoutLinkedNotificationRuleDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<ResourceProviderEndpoint>(map['endpoints'], (value) => ResourceProviderEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule_dsts_configuration_response.dart';
import 'resource_provider_endpoint_response.dart';
import 'token_auth_configuration_response.dart';

class FanoutLinkedNotificationRuleResponse {
  /// The actions.
  final List<String>? actions;
  /// The dsts configuration.
  final FanoutLinkedNotificationRuleDstsConfigurationResponse? dstsConfiguration;
  /// The endpoints.
  final List<ResourceProviderEndpointResponse>? endpoints;
  /// The token auth configuration.
  final TokenAuthConfigurationResponse? tokenAuthConfiguration;

  /// Creates a new [FanoutLinkedNotificationRuleResponse].
  /// [actions] The actions.
  /// [dstsConfiguration] The dsts configuration.
  /// [endpoints] The endpoints.
  /// [tokenAuthConfiguration] The token auth configuration.
  FanoutLinkedNotificationRuleResponse({
    this.actions,
    this.dstsConfiguration,
    this.endpoints,
    this.tokenAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'dstsConfiguration': ?dstsConfiguration == null ? null : dstsConfiguration!.toMap(),
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<ResourceProviderEndpointResponse, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'tokenAuthConfiguration': ?tokenAuthConfiguration == null ? null : tokenAuthConfiguration!.toMap(),
    };
  }

  factory FanoutLinkedNotificationRuleResponse.fromMap(Map<String, dynamic> map) {
    return FanoutLinkedNotificationRuleResponse(
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      dstsConfiguration: map['dstsConfiguration'] == null ? null : FanoutLinkedNotificationRuleDstsConfigurationResponse.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<ResourceProviderEndpointResponse>(map['endpoints'], (value) => ResourceProviderEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : TokenAuthConfigurationResponse.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


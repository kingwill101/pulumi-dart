// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule_dsts_configuration_response.dart';
import 'resource_provider_endpoint_response.dart';
import 'token_auth_configuration_response.dart';

class FanoutLinkedNotificationRuleResponse {
  /// The actions.
  final pulumi.Input<List<String>>? actions;

  /// The dsts configuration.
  final pulumi.Input<FanoutLinkedNotificationRuleDstsConfigurationResponse>?
  dstsConfiguration;

  /// The endpoints.
  final pulumi.Input<List<ResourceProviderEndpointResponse>>? endpoints;

  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfigurationResponse>? tokenAuthConfiguration;

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
      'dstsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            FanoutLinkedNotificationRuleDstsConfigurationResponse,
            Map<String, dynamic>
          >(dstsConfiguration, (value) => value.toMap()),
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceProviderEndpointResponse>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceProviderEndpointResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tokenAuthConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            TokenAuthConfigurationResponse,
            Map<String, dynamic>
          >(tokenAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory FanoutLinkedNotificationRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FanoutLinkedNotificationRuleResponse(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dstsConfiguration: (() {
        final guardedValue = map['dstsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FanoutLinkedNotificationRuleDstsConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceProviderEndpointResponse>(
            guardedValue,
            (value) => ResourceProviderEndpointResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tokenAuthConfiguration: (() {
        final guardedValue = map['tokenAuthConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TokenAuthConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_namespace_public_endpoint_params_chat_completions_endpoint.dart';
import 'ai_search_namespace_public_endpoint_params_mcp.dart';
import 'ai_search_namespace_public_endpoint_params_rate_limit.dart';
import 'ai_search_namespace_public_endpoint_params_search_endpoint.dart';

class AiSearchNamespacePublicEndpointParams {
  final pulumi.Input<List<String>?>? authorizedHosts;
  final pulumi.Input<AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint?>? chatCompletionsEndpoint;
  /// Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  final pulumi.Input<List<String>?>? customDomains;
  /// When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  final pulumi.Input<bool?>? defaultDomainEnabled;
  final pulumi.Input<bool?>? enabled;
  /// Instance IDs exposed through the namespace public endpoint. Empty means nothing is searchable. Every ID must be an existing instance in this namespace, and the list cannot exceed the account's multi-instance search limit.
  final pulumi.Input<List<String>?>? instancesAlloweds;
  final pulumi.Input<AiSearchNamespacePublicEndpointParamsMcp?>? mcp;
  final pulumi.Input<AiSearchNamespacePublicEndpointParamsRateLimit?>? rateLimit;
  final pulumi.Input<AiSearchNamespacePublicEndpointParamsSearchEndpoint?>? searchEndpoint;

  /// Creates a new [AiSearchNamespacePublicEndpointParams].
  /// [authorizedHosts] Optional.
  /// [chatCompletionsEndpoint] Optional.
  /// [customDomains] Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  /// [defaultDomainEnabled] When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  /// [enabled] Optional.
  /// [instancesAlloweds] Instance IDs exposed through the namespace public endpoint. Empty means nothing is searchable. Every ID must be an existing instance in this namespace, and the list cannot exceed the account's multi-instance search limit.
  /// [mcp] Optional.
  /// [rateLimit] Optional.
  /// [searchEndpoint] Optional.
  const AiSearchNamespacePublicEndpointParams({
    this.authorizedHosts,
    this.chatCompletionsEndpoint,
    this.customDomains,
    this.defaultDomainEnabled,
    this.enabled,
    this.instancesAlloweds,
    this.mcp,
    this.rateLimit,
    this.searchEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedHosts': ?authorizedHosts,
      'chatCompletionsEndpoint': ?pulumi.Input.mapOptionalInputValue<AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint, Map<String, dynamic>>(chatCompletionsEndpoint, (value) => value.toMap()),
      'customDomains': ?customDomains,
      'defaultDomainEnabled': ?defaultDomainEnabled,
      'enabled': ?enabled,
      'instancesAlloweds': ?instancesAlloweds,
      'mcp': ?pulumi.Input.mapOptionalInputValue<AiSearchNamespacePublicEndpointParamsMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
      'rateLimit': ?pulumi.Input.mapOptionalInputValue<AiSearchNamespacePublicEndpointParamsRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'searchEndpoint': ?pulumi.Input.mapOptionalInputValue<AiSearchNamespacePublicEndpointParamsSearchEndpoint, Map<String, dynamic>>(searchEndpoint, (value) => value.toMap()),
    };
  }

  factory AiSearchNamespacePublicEndpointParams.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespacePublicEndpointParams(
      authorizedHosts: (() { final guardedValue = map['authorizedHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      chatCompletionsEndpoint: (() { final guardedValue = map['chatCompletionsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultDomainEnabled: (() { final guardedValue = map['defaultDomainEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instancesAlloweds: (() { final guardedValue = map['instancesAlloweds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mcp: (() { final guardedValue = map['mcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchNamespacePublicEndpointParamsMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchNamespacePublicEndpointParamsRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      searchEndpoint: (() { final guardedValue = map['searchEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchNamespacePublicEndpointParamsSearchEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

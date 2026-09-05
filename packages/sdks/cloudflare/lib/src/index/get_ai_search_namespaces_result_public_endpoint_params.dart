// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_namespaces_result_public_endpoint_params_chat_completions_endpoint.dart';
import 'get_ai_search_namespaces_result_public_endpoint_params_mcp.dart';
import 'get_ai_search_namespaces_result_public_endpoint_params_rate_limit.dart';
import 'get_ai_search_namespaces_result_public_endpoint_params_search_endpoint.dart';

class GetAiSearchNamespacesResultPublicEndpointParams {
  final pulumi.Input<List<String>> authorizedHosts;
  final pulumi.Input<GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint> chatCompletionsEndpoint;
  /// Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  final pulumi.Input<List<String>> customDomains;
  /// When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  final pulumi.Input<bool> defaultDomainEnabled;
  final pulumi.Input<bool> enabled;
  /// Instance IDs exposed through the namespace public endpoint. Empty means nothing is searchable. Every ID must be an existing instance in this namespace, and the list cannot exceed the account's multi-instance search limit.
  final pulumi.Input<List<String>> instancesAlloweds;
  final pulumi.Input<GetAiSearchNamespacesResultPublicEndpointParamsMcp> mcp;
  final pulumi.Input<GetAiSearchNamespacesResultPublicEndpointParamsRateLimit> rateLimit;
  final pulumi.Input<GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint> searchEndpoint;

  /// Creates a new [GetAiSearchNamespacesResultPublicEndpointParams].
  /// [authorizedHosts] Required.
  /// [chatCompletionsEndpoint] Required.
  /// [customDomains] Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  /// [defaultDomainEnabled] When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  /// [enabled] Required.
  /// [instancesAlloweds] Instance IDs exposed through the namespace public endpoint. Empty means nothing is searchable. Every ID must be an existing instance in this namespace, and the list cannot exceed the account's multi-instance search limit.
  /// [mcp] Required.
  /// [rateLimit] Required.
  /// [searchEndpoint] Required.
  const GetAiSearchNamespacesResultPublicEndpointParams({
    required this.authorizedHosts,
    required this.chatCompletionsEndpoint,
    required this.customDomains,
    required this.defaultDomainEnabled,
    required this.enabled,
    required this.instancesAlloweds,
    required this.mcp,
    required this.rateLimit,
    required this.searchEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedHosts': authorizedHosts,
      'chatCompletionsEndpoint': pulumi.Input.mapInputValue<GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint, Map<String, dynamic>>(chatCompletionsEndpoint, (value) => value.toMap()),
      'customDomains': customDomains,
      'defaultDomainEnabled': defaultDomainEnabled,
      'enabled': enabled,
      'instancesAlloweds': instancesAlloweds,
      'mcp': pulumi.Input.mapInputValue<GetAiSearchNamespacesResultPublicEndpointParamsMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
      'rateLimit': pulumi.Input.mapInputValue<GetAiSearchNamespacesResultPublicEndpointParamsRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'searchEndpoint': pulumi.Input.mapInputValue<GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint, Map<String, dynamic>>(searchEndpoint, (value) => value.toMap()),
    };
  }

  factory GetAiSearchNamespacesResultPublicEndpointParams.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesResultPublicEndpointParams(
      authorizedHosts: pulumi.Input.fromValue((map['authorizedHosts'] as List).cast<String>()),
      chatCompletionsEndpoint: pulumi.Input.fromValue(GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint.fromMap((map['chatCompletionsEndpoint']! as Map).cast<String, dynamic>())),
      customDomains: pulumi.Input.fromValue((map['customDomains'] as List).cast<String>()),
      defaultDomainEnabled: pulumi.Input.fromValue(map['defaultDomainEnabled'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      instancesAlloweds: pulumi.Input.fromValue((map['instancesAlloweds'] as List).cast<String>()),
      mcp: pulumi.Input.fromValue(GetAiSearchNamespacesResultPublicEndpointParamsMcp.fromMap((map['mcp']! as Map).cast<String, dynamic>())),
      rateLimit: pulumi.Input.fromValue(GetAiSearchNamespacesResultPublicEndpointParamsRateLimit.fromMap((map['rateLimit']! as Map).cast<String, dynamic>())),
      searchEndpoint: pulumi.Input.fromValue(GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint.fromMap((map['searchEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}

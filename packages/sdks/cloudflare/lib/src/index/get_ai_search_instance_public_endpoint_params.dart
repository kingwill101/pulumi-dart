// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_public_endpoint_params_chat_completions_endpoint.dart';
import 'get_ai_search_instance_public_endpoint_params_mcp.dart';
import 'get_ai_search_instance_public_endpoint_params_rate_limit.dart';
import 'get_ai_search_instance_public_endpoint_params_search_endpoint.dart';

class GetAiSearchInstancePublicEndpointParams {
  final pulumi.Input<List<String>> authorizedHosts;
  final pulumi.Input<GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint> chatCompletionsEndpoint;
  /// Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  final pulumi.Input<List<String>> customDomains;
  /// When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  final pulumi.Input<bool> defaultDomainEnabled;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<GetAiSearchInstancePublicEndpointParamsMcp> mcp;
  final pulumi.Input<GetAiSearchInstancePublicEndpointParamsRateLimit> rateLimit;
  final pulumi.Input<GetAiSearchInstancePublicEndpointParamsSearchEndpoint> searchEndpoint;

  /// Creates a new [GetAiSearchInstancePublicEndpointParams].
  /// [authorizedHosts] Required.
  /// [chatCompletionsEndpoint] Required.
  /// [customDomains] Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  /// [defaultDomainEnabled] When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  /// [enabled] Required.
  /// [mcp] Required.
  /// [rateLimit] Required.
  /// [searchEndpoint] Required.
  const GetAiSearchInstancePublicEndpointParams({
    required this.authorizedHosts,
    required this.chatCompletionsEndpoint,
    required this.customDomains,
    required this.defaultDomainEnabled,
    required this.enabled,
    required this.mcp,
    required this.rateLimit,
    required this.searchEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedHosts': authorizedHosts,
      'chatCompletionsEndpoint': pulumi.Input.mapInputValue<GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint, Map<String, dynamic>>(chatCompletionsEndpoint, (value) => value.toMap()),
      'customDomains': customDomains,
      'defaultDomainEnabled': defaultDomainEnabled,
      'enabled': enabled,
      'mcp': pulumi.Input.mapInputValue<GetAiSearchInstancePublicEndpointParamsMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
      'rateLimit': pulumi.Input.mapInputValue<GetAiSearchInstancePublicEndpointParamsRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'searchEndpoint': pulumi.Input.mapInputValue<GetAiSearchInstancePublicEndpointParamsSearchEndpoint, Map<String, dynamic>>(searchEndpoint, (value) => value.toMap()),
    };
  }

  factory GetAiSearchInstancePublicEndpointParams.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancePublicEndpointParams(
      authorizedHosts: pulumi.Input.fromValue((map['authorizedHosts'] as List).cast<String>()),
      chatCompletionsEndpoint: pulumi.Input.fromValue(GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint.fromMap((map['chatCompletionsEndpoint']! as Map).cast<String, dynamic>())),
      customDomains: pulumi.Input.fromValue((map['customDomains'] as List).cast<String>()),
      defaultDomainEnabled: pulumi.Input.fromValue(map['defaultDomainEnabled'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      mcp: pulumi.Input.fromValue(GetAiSearchInstancePublicEndpointParamsMcp.fromMap((map['mcp']! as Map).cast<String, dynamic>())),
      rateLimit: pulumi.Input.fromValue(GetAiSearchInstancePublicEndpointParamsRateLimit.fromMap((map['rateLimit']! as Map).cast<String, dynamic>())),
      searchEndpoint: pulumi.Input.fromValue(GetAiSearchInstancePublicEndpointParamsSearchEndpoint.fromMap((map['searchEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}

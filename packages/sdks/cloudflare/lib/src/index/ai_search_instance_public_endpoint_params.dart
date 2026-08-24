// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_public_endpoint_params_chat_completions_endpoint.dart';
import 'ai_search_instance_public_endpoint_params_mcp.dart';
import 'ai_search_instance_public_endpoint_params_rate_limit.dart';
import 'ai_search_instance_public_endpoint_params_search_endpoint.dart';

class AiSearchInstancePublicEndpointParams {
  final pulumi.Input<List<String>?>? authorizedHosts;
  final pulumi.Input<AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint?>? chatCompletionsEndpoint;
  /// Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  final pulumi.Input<List<String>?>? customDomains;
  /// When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  final pulumi.Input<bool?>? defaultDomainEnabled;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<AiSearchInstancePublicEndpointParamsMcp?>? mcp;
  final pulumi.Input<AiSearchInstancePublicEndpointParamsRateLimit?>? rateLimit;
  final pulumi.Input<AiSearchInstancePublicEndpointParamsSearchEndpoint?>? searchEndpoint;

  /// Creates a new [AiSearchInstancePublicEndpointParams].
  /// [authorizedHosts] Optional.
  /// [chatCompletionsEndpoint] Optional.
  /// [customDomains] Custom domain hostnames that alias this public endpoint. GET and create responses return the current set; on update (PUT) this field is only echoed back when supplied in the request body, otherwise it is null (omit it to leave domains unchanged).
  /// [defaultDomainEnabled] When false, the instance is reachable only via a registered custom domain and the default \n\n.search.ai.cloudflare.com host returns 404. Requires at least one custom domain. Defaults to true. public*endpoint*params is replaced wholesale on update, so resend default*domain*enabled on every update to keep the default host off — omitting it resets to true.
  /// [enabled] Optional.
  /// [mcp] Optional.
  /// [rateLimit] Optional.
  /// [searchEndpoint] Optional.
  const AiSearchInstancePublicEndpointParams({
    this.authorizedHosts,
    this.chatCompletionsEndpoint,
    this.customDomains,
    this.defaultDomainEnabled,
    this.enabled,
    this.mcp,
    this.rateLimit,
    this.searchEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedHosts': ?authorizedHosts,
      'chatCompletionsEndpoint': ?pulumi.Input.mapOptionalInputValue<AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint, Map<String, dynamic>>(chatCompletionsEndpoint, (value) => value.toMap()),
      'customDomains': ?customDomains,
      'defaultDomainEnabled': ?defaultDomainEnabled,
      'enabled': ?enabled,
      'mcp': ?pulumi.Input.mapOptionalInputValue<AiSearchInstancePublicEndpointParamsMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
      'rateLimit': ?pulumi.Input.mapOptionalInputValue<AiSearchInstancePublicEndpointParamsRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'searchEndpoint': ?pulumi.Input.mapOptionalInputValue<AiSearchInstancePublicEndpointParamsSearchEndpoint, Map<String, dynamic>>(searchEndpoint, (value) => value.toMap()),
    };
  }

  factory AiSearchInstancePublicEndpointParams.fromMap(Map<String, dynamic> map) {
    return AiSearchInstancePublicEndpointParams(
      authorizedHosts: (() { final guardedValue = map['authorizedHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      chatCompletionsEndpoint: (() { final guardedValue = map['chatCompletionsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultDomainEnabled: (() { final guardedValue = map['defaultDomainEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mcp: (() { final guardedValue = map['mcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstancePublicEndpointParamsMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstancePublicEndpointParamsRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      searchEndpoint: (() { final guardedValue = map['searchEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstancePublicEndpointParamsSearchEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

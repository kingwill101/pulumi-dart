// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleActionsRouteConfigurationOverrideAction {
  /// `HonorOrigin` the Front Door will always honor origin response header directive. If the origin directive is missing, Front Door will cache contents anywhere from `1` to `3` days. `OverrideAlways` the TTL value returned from your Front Door Origin is overwritten with the value specified in the action. This behavior will only be applied if the response is cacheable. `OverrideIfOriginMissing` if no TTL value gets returned from your Front Door Origin, the rule sets the TTL to the value specified in the action. This behavior will only be applied if the response is cacheable. `Disabled` the Front Door will not cache the response contents, irrespective of Front Door Origin response directives. Possible values include `HonorOrigin`, `OverrideAlways`, `OverrideIfOriginMissing` or `Disabled`.
  final String? cacheBehavior;
  /// When Cache behavior is set to `Override` or `SetIfMissing`, this field specifies the cache duration to use. The maximum duration is 366 days specified in the `d.HH:MM:SS` format(e.g. `365.23:59:59`). If the desired maximum cache duration is less than 1 day then the maximum cache duration should be specified in the `HH:MM:SS` format(e.g. `23:59:59`).
  final String? cacheDuration;
  /// The Front Door Origin Group resource ID that the request should be routed to. This overrides the configuration specified in the Front Door Endpoint route.
  final String? cdnFrontdoorOriginGroupId;
  /// Should the Front Door dynamically compress the content? Possible values include `true` or `false`.
  ///
  /// > **Note:** Content won't be compressed on AzureFrontDoor when requested content is smaller than `1 byte` or larger than `1 MB`.
  final bool? compressionEnabled;
  /// The forwarding protocol the request will be redirected as. This overrides the configuration specified in the route to be associated with. Possible values include `MatchRequest`, `HttpOnly` or `HttpsOnly`.
  ///
  /// > **Note:** If the `cdn_frontdoor_origin_group_id` is not defined you cannot set the `forwarding_protocol`.
  final String? forwardingProtocol;
  /// `IncludeSpecifiedQueryStrings` query strings specified in the `query_string_parameters` field get included when the cache key gets generated. `UseQueryString` cache every unique URL, each unique URL will have its own cache key. `IgnoreSpecifiedQueryStrings` query strings specified in the `query_string_parameters` field get excluded when the cache key gets generated. `IgnoreQueryString` query strings aren't considered when the cache key gets generated. Possible values include `IgnoreQueryString`, `UseQueryString`, `IgnoreSpecifiedQueryStrings` or `IncludeSpecifiedQueryStrings`.
  final String? queryStringCachingBehavior;
  /// A list of query string parameter names.
  ///
  /// > **Note:** `query_string_parameters` is a required field when the `query_string_caching_behavior` is set to `IncludeSpecifiedQueryStrings` or `IgnoreSpecifiedQueryStrings`.
  final List<String>? queryStringParameters;

  /// Creates a new [FrontdoorRuleActionsRouteConfigurationOverrideAction].
  /// [cacheBehavior] `HonorOrigin` the Front Door will always honor origin response header directive. If the origin directive is missing, Front Door will cache contents anywhere from `1` to `3` days. `OverrideAlways` the TTL value returned from your Front Door Origin is overwritten with the value specified in the action. This behavior will only be applied if the response is cacheable. `OverrideIfOriginMissing` if no TTL value gets returned from your Front Door Origin, the rule sets the TTL to the value specified in the action. This behavior will only be applied if the response is cacheable. `Disabled` the Front Door will not cache the response contents, irrespective of Front Door Origin response directives. Possible values include `HonorOrigin`, `OverrideAlways`, `OverrideIfOriginMissing` or `Disabled`.
  /// [cacheDuration] When Cache behavior is set to `Override` or `SetIfMissing`, this field specifies the cache duration to use. The maximum duration is 366 days specified in the `d.HH:MM:SS` format(e.g. `365.23:59:59`). If the desired maximum cache duration is less than 1 day then the maximum cache duration should be specified in the `HH:MM:SS` format(e.g. `23:59:59`).
  /// [cdnFrontdoorOriginGroupId] The Front Door Origin Group resource ID that the request should be routed to. This overrides the configuration specified in the Front Door Endpoint route.
  /// [compressionEnabled] Should the Front Door dynamically compress the content? Possible values include `true` or `false`.
  /// [forwardingProtocol] The forwarding protocol the request will be redirected as. This overrides the configuration specified in the route to be associated with. Possible values include `MatchRequest`, `HttpOnly` or `HttpsOnly`.
  /// [queryStringCachingBehavior] `IncludeSpecifiedQueryStrings` query strings specified in the `query_string_parameters` field get included when the cache key gets generated. `UseQueryString` cache every unique URL, each unique URL will have its own cache key. `IgnoreSpecifiedQueryStrings` query strings specified in the `query_string_parameters` field get excluded when the cache key gets generated. `IgnoreQueryString` query strings aren't considered when the cache key gets generated. Possible values include `IgnoreQueryString`, `UseQueryString`, `IgnoreSpecifiedQueryStrings` or `IncludeSpecifiedQueryStrings`.
  /// [queryStringParameters] A list of query string parameter names.
  FrontdoorRuleActionsRouteConfigurationOverrideAction({
    this.cacheBehavior,
    this.cacheDuration,
    this.cdnFrontdoorOriginGroupId,
    this.compressionEnabled,
    this.forwardingProtocol,
    this.queryStringCachingBehavior,
    this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheBehavior': ?cacheBehavior,
      'cacheDuration': ?cacheDuration,
      'cdnFrontdoorOriginGroupId': ?cdnFrontdoorOriginGroupId,
      'compressionEnabled': ?compressionEnabled,
      'forwardingProtocol': ?forwardingProtocol,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
      'queryStringParameters': ?queryStringParameters,
    };
  }

  factory FrontdoorRuleActionsRouteConfigurationOverrideAction.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActionsRouteConfigurationOverrideAction(
      cacheBehavior: map['cacheBehavior'] == null ? null : map['cacheBehavior'] as String,
      cacheDuration: map['cacheDuration'] == null ? null : map['cacheDuration'] as String,
      cdnFrontdoorOriginGroupId: map['cdnFrontdoorOriginGroupId'] == null ? null : map['cdnFrontdoorOriginGroupId'] as String,
      compressionEnabled: map['compressionEnabled'] == null ? null : map['compressionEnabled'] as bool,
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : map['queryStringCachingBehavior'] as String,
      queryStringParameters: map['queryStringParameters'] == null ? null : (map['queryStringParameters'] as List).cast<String>(),
    );
  }
}


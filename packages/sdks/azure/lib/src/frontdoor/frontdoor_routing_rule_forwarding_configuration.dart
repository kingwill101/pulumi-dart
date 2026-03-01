// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRoutingRuleForwardingConfiguration {
  /// Specifies the name of the Backend Pool to forward the incoming traffic to.
  final String backendPoolName;
  /// Specify the minimum caching duration (in ISO8601 notation e.g. `P1DT2H` for 1 day and 2 hours). Needs to be greater than 0 and smaller than 365 days. `cache_duration` works only in combination with `cache_enabled` set to `true`.
  final String? cacheDuration;
  /// Specifies whether to Enable caching or not. Valid options are `true` or `false`. Defaults to `false`.
  final bool? cacheEnabled;
  /// Defines cache behaviour in relation to query string parameters. Valid options are `StripAll`, `StripAllExcept`, `StripOnly` or `StripNone`. Defaults to `StripAll`.
  final String? cacheQueryParameterStripDirective;
  /// Specify query parameters (array). Works only in combination with `cache_query_parameter_strip_directive` set to `StripAllExcept` or `StripOnly`.
  final List<String>? cacheQueryParameters;
  /// Whether to use dynamic compression when caching. Valid options are `true` or `false`. Defaults to `false`.
  final bool? cacheUseDynamicCompression;
  /// Path to use when constructing the request to forward to the backend. This functions as a URL Rewrite. Default behaviour preserves the URL path.
  final String? customForwardingPath;
  /// Protocol to use when redirecting. Valid options are `HttpOnly`, `HttpsOnly`, or `MatchRequest`. Defaults to `HttpsOnly`.
  final String? forwardingProtocol;

  /// Creates a new [FrontdoorRoutingRuleForwardingConfiguration].
  /// [backendPoolName] Specifies the name of the Backend Pool to forward the incoming traffic to.
  /// [cacheDuration] Specify the minimum caching duration (in ISO8601 notation e.g. `P1DT2H` for 1 day and 2 hours). Needs to be greater than 0 and smaller than 365 days. `cache_duration` works only in combination with `cache_enabled` set to `true`.
  /// [cacheEnabled] Specifies whether to Enable caching or not. Valid options are `true` or `false`. Defaults to `false`.
  /// [cacheQueryParameterStripDirective] Defines cache behaviour in relation to query string parameters. Valid options are `StripAll`, `StripAllExcept`, `StripOnly` or `StripNone`. Defaults to `StripAll`.
  /// [cacheQueryParameters] Specify query parameters (array). Works only in combination with `cache_query_parameter_strip_directive` set to `StripAllExcept` or `StripOnly`.
  /// [cacheUseDynamicCompression] Whether to use dynamic compression when caching. Valid options are `true` or `false`. Defaults to `false`.
  /// [customForwardingPath] Path to use when constructing the request to forward to the backend. This functions as a URL Rewrite. Default behaviour preserves the URL path.
  /// [forwardingProtocol] Protocol to use when redirecting. Valid options are `HttpOnly`, `HttpsOnly`, or `MatchRequest`. Defaults to `HttpsOnly`.
  FrontdoorRoutingRuleForwardingConfiguration({
    required this.backendPoolName,
    this.cacheDuration,
    this.cacheEnabled,
    this.cacheQueryParameterStripDirective,
    this.cacheQueryParameters,
    this.cacheUseDynamicCompression,
    this.customForwardingPath,
    this.forwardingProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolName': backendPoolName,
      'cacheDuration': ?cacheDuration,
      'cacheEnabled': ?cacheEnabled,
      'cacheQueryParameterStripDirective': ?cacheQueryParameterStripDirective,
      'cacheQueryParameters': ?cacheQueryParameters,
      'cacheUseDynamicCompression': ?cacheUseDynamicCompression,
      'customForwardingPath': ?customForwardingPath,
      'forwardingProtocol': ?forwardingProtocol,
    };
  }

  factory FrontdoorRoutingRuleForwardingConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontdoorRoutingRuleForwardingConfiguration(
      backendPoolName: map['backendPoolName'] as String,
      cacheDuration: map['cacheDuration'] == null ? null : map['cacheDuration'] as String,
      cacheEnabled: map['cacheEnabled'] == null ? null : map['cacheEnabled'] as bool,
      cacheQueryParameterStripDirective: map['cacheQueryParameterStripDirective'] == null ? null : map['cacheQueryParameterStripDirective'] as String,
      cacheQueryParameters: map['cacheQueryParameters'] == null ? null : (map['cacheQueryParameters'] as List).cast<String>(),
      cacheUseDynamicCompression: map['cacheUseDynamicCompression'] == null ? null : map['cacheUseDynamicCompression'] as bool,
      customForwardingPath: map['customForwardingPath'] == null ? null : map['customForwardingPath'] as String,
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
    );
  }
}


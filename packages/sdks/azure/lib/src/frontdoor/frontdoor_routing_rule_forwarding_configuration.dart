// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRoutingRuleForwardingConfiguration {
  /// Specifies the name of the Backend Pool to forward the incoming traffic to.
  final pulumi.Input<String> backendPoolName;

  /// Specify the minimum caching duration (in ISO8601 notation e.g. `P1DT2H` for 1 day and 2 hours). Needs to be greater than 0 and smaller than 365 days. `cache_duration` works only in combination with `cache_enabled` set to `true`.
  final pulumi.Input<String>? cacheDuration;

  /// Specifies whether to Enable caching or not. Valid options are `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? cacheEnabled;

  /// Defines cache behaviour in relation to query string parameters. Valid options are `StripAll`, `StripAllExcept`, `StripOnly` or `StripNone`. Defaults to `StripAll`.
  final pulumi.Input<String>? cacheQueryParameterStripDirective;

  /// Specify query parameters (array). Works only in combination with `cache_query_parameter_strip_directive` set to `StripAllExcept` or `StripOnly`.
  final pulumi.Input<List<String>>? cacheQueryParameters;

  /// Whether to use dynamic compression when caching. Valid options are `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? cacheUseDynamicCompression;

  /// Path to use when constructing the request to forward to the backend. This functions as a URL Rewrite. Default behaviour preserves the URL path.
  final pulumi.Input<String>? customForwardingPath;

  /// Protocol to use when redirecting. Valid options are `HttpOnly`, `HttpsOnly`, or `MatchRequest`. Defaults to `HttpsOnly`.
  final pulumi.Input<String>? forwardingProtocol;

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

  factory FrontdoorRoutingRuleForwardingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrontdoorRoutingRuleForwardingConfiguration(
      backendPoolName: pulumi.Input.fromValue(map['backendPoolName'] as String),
      cacheDuration: (() {
        final guardedValue = map['cacheDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheEnabled: (() {
        final guardedValue = map['cacheEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cacheQueryParameterStripDirective: (() {
        final guardedValue = map['cacheQueryParameterStripDirective'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheQueryParameters: (() {
        final guardedValue = map['cacheQueryParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cacheUseDynamicCompression: (() {
        final guardedValue = map['cacheUseDynamicCompression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      customForwardingPath: (() {
        final guardedValue = map['customForwardingPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forwardingProtocol: (() {
        final guardedValue = map['forwardingProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

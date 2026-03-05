// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRoutingRuleRedirectConfiguration {
  /// The destination fragment in the portion of URL after '#'. Set this to add a fragment to the redirect URL.
  final pulumi.Input<String>? customFragment;
  /// Set this to change the URL for the redirection.
  final pulumi.Input<String>? customHost;
  /// The path to retain as per the incoming request, or update in the URL for the redirection.
  final pulumi.Input<String>? customPath;
  /// Replace any existing query string from the incoming request URL.
  final pulumi.Input<String>? customQueryString;
  /// Protocol to use when redirecting. Valid options are `HttpOnly`, `HttpsOnly`, or `MatchRequest`.
  final pulumi.Input<String> redirectProtocol;
  /// Status code for the redirect. Valida options are `Moved`, `Found`, `TemporaryRedirect`, `PermanentRedirect`.
  final pulumi.Input<String> redirectType;

  /// Creates a new [FrontdoorRoutingRuleRedirectConfiguration].
  /// [customFragment] The destination fragment in the portion of URL after '#'. Set this to add a fragment to the redirect URL.
  /// [customHost] Set this to change the URL for the redirection.
  /// [customPath] The path to retain as per the incoming request, or update in the URL for the redirection.
  /// [customQueryString] Replace any existing query string from the incoming request URL.
  /// [redirectProtocol] Protocol to use when redirecting. Valid options are `HttpOnly`, `HttpsOnly`, or `MatchRequest`.
  /// [redirectType] Status code for the redirect. Valida options are `Moved`, `Found`, `TemporaryRedirect`, `PermanentRedirect`.
  FrontdoorRoutingRuleRedirectConfiguration({
    this.customFragment,
    this.customHost,
    this.customPath,
    this.customQueryString,
    required this.redirectProtocol,
    required this.redirectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFragment': ?customFragment,
      'customHost': ?customHost,
      'customPath': ?customPath,
      'customQueryString': ?customQueryString,
      'redirectProtocol': redirectProtocol,
      'redirectType': redirectType,
    };
  }

  factory FrontdoorRoutingRuleRedirectConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontdoorRoutingRuleRedirectConfiguration(
      customFragment: (() { final guardedValue = map['customFragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customHost: (() { final guardedValue = map['customHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPath: (() { final guardedValue = map['customPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customQueryString: (() { final guardedValue = map['customQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectProtocol: pulumi.Input.fromValue(map['redirectProtocol'] as String),
      redirectType: pulumi.Input.fromValue(map['redirectType'] as String),
    );
  }
}


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
      customFragment: map['customFragment'] == null ? null : (map['customFragment'] as String).input(),
      customHost: map['customHost'] == null ? null : (map['customHost'] as String).input(),
      customPath: map['customPath'] == null ? null : (map['customPath'] as String).input(),
      customQueryString: map['customQueryString'] == null ? null : (map['customQueryString'] as String).input(),
      redirectProtocol: (map['redirectProtocol'] as String).input(),
      redirectType: (map['redirectType'] as String).input(),
    );
  }
}


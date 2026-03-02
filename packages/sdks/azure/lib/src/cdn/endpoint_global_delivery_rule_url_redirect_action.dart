// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGlobalDeliveryRuleUrlRedirectAction {
  /// Specifies the fragment part of the URL. This value must not start with a `#`.
  final pulumi.Input<String>? fragment;
  /// Specifies the hostname part of the URL.
  final pulumi.Input<String>? hostname;
  /// Specifies the path part of the URL. This value must begin with a `/`.
  final pulumi.Input<String>? path;
  /// Specifies the protocol part of the URL. Valid values are `MatchRequest`, `Http` and `Https`. Defaults to `MatchRequest`.
  final pulumi.Input<String>? protocol;
  /// Specifies the query string part of the URL. This value must not start with a `?` or `&` and must be in `<key>=<value>` format separated by `&`.
  final pulumi.Input<String>? queryString;
  /// Type of the redirect. Valid values are `Found`, `Moved`, `PermanentRedirect` and `TemporaryRedirect`.
  final pulumi.Input<String> redirectType;

  /// Creates a new [EndpointGlobalDeliveryRuleUrlRedirectAction].
  /// [fragment] Specifies the fragment part of the URL. This value must not start with a `#`.
  /// [hostname] Specifies the hostname part of the URL.
  /// [path] Specifies the path part of the URL. This value must begin with a `/`.
  /// [protocol] Specifies the protocol part of the URL. Valid values are `MatchRequest`, `Http` and `Https`. Defaults to `MatchRequest`.
  /// [queryString] Specifies the query string part of the URL. This value must not start with a `?` or `&` and must be in `<key>=<value>` format separated by `&`.
  /// [redirectType] Type of the redirect. Valid values are `Found`, `Moved`, `PermanentRedirect` and `TemporaryRedirect`.
  EndpointGlobalDeliveryRuleUrlRedirectAction({
    this.fragment,
    this.hostname,
    this.path,
    this.protocol,
    this.queryString,
    required this.redirectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fragment': ?fragment,
      'hostname': ?hostname,
      'path': ?path,
      'protocol': ?protocol,
      'queryString': ?queryString,
      'redirectType': redirectType,
    };
  }

  factory EndpointGlobalDeliveryRuleUrlRedirectAction.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRuleUrlRedirectAction(
      fragment: map['fragment'] == null ? null : (map['fragment'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      queryString: map['queryString'] == null ? null : (map['queryString'] as String).input(),
      redirectType: (map['redirectType'] as String).input(),
    );
  }
}


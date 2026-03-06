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
  /// Specifies the query string part of the URL. This value must not start with a `?` or `&` and must be in `&lt;key&gt;=&lt;value&gt;` format separated by `&`.
  final pulumi.Input<String>? queryString;
  /// Type of the redirect. Valid values are `Found`, `Moved`, `PermanentRedirect` and `TemporaryRedirect`.
  final pulumi.Input<String> redirectType;

  /// Creates a new [EndpointGlobalDeliveryRuleUrlRedirectAction].
  /// [fragment] Specifies the fragment part of the URL. This value must not start with a `#`.
  /// [hostname] Specifies the hostname part of the URL.
  /// [path] Specifies the path part of the URL. This value must begin with a `/`.
  /// [protocol] Specifies the protocol part of the URL. Valid values are `MatchRequest`, `Http` and `Https`. Defaults to `MatchRequest`.
  /// [queryString] Specifies the query string part of the URL. This value must not start with a `?` or `&` and must be in `&lt;key&gt;=&lt;value&gt;` format separated by `&`.
  /// [redirectType] Type of the redirect. Valid values are `Found`, `Moved`, `PermanentRedirect` and `TemporaryRedirect`.
  const EndpointGlobalDeliveryRuleUrlRedirectAction({
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
      fragment: (() { final guardedValue = map['fragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectType: pulumi.Input.fromValue(map['redirectType'] as String),
    );
  }
}


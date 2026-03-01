// ignore_for_file: unused_element, unnecessary_cast


class EndpointGlobalDeliveryRuleUrlRedirectAction {
  /// Specifies the fragment part of the URL. This value must not start with a `#`.
  final String? fragment;
  /// Specifies the hostname part of the URL.
  final String? hostname;
  /// Specifies the path part of the URL. This value must begin with a `/`.
  final String? path;
  /// Specifies the protocol part of the URL. Valid values are `MatchRequest`, `Http` and `Https`. Defaults to `MatchRequest`.
  final String? protocol;
  /// Specifies the query string part of the URL. This value must not start with a `?` or `&` and must be in `<key>=<value>` format separated by `&`.
  final String? queryString;
  /// Type of the redirect. Valid values are `Found`, `Moved`, `PermanentRedirect` and `TemporaryRedirect`.
  final String redirectType;

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
      fragment: map['fragment'] == null ? null : map['fragment'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      queryString: map['queryString'] == null ? null : map['queryString'] as String,
      redirectType: map['redirectType'] as String,
    );
  }
}


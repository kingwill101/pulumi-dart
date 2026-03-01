// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayRedirectConfiguration {
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// Whether to include the path in the redirected URL. Defaults to `false`
  final bool? includePath;
  /// Whether to include the query string in the redirected URL. Default to `false`
  final bool? includeQueryString;
  /// Unique name of the redirect configuration block
  final String name;
  /// The type of redirect. Possible values are `Permanent`, `Temporary`, `Found` and `SeeOther`
  final String redirectType;
  final String? targetListenerId;
  /// The name of the listener to redirect to. Cannot be set if `target_url` is set.
  final String? targetListenerName;
  /// The URL to redirect the request to. Cannot be set if `target_listener_name` is set.
  final String? targetUrl;

  /// Creates a new [ApplicationGatewayRedirectConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [includePath] Whether to include the path in the redirected URL. Defaults to `false`
  /// [includeQueryString] Whether to include the query string in the redirected URL. Default to `false`
  /// [name] Unique name of the redirect configuration block
  /// [redirectType] The type of redirect. Possible values are `Permanent`, `Temporary`, `Found` and `SeeOther`
  /// [targetListenerId] Optional.
  /// [targetListenerName] The name of the listener to redirect to. Cannot be set if `target_url` is set.
  /// [targetUrl] The URL to redirect the request to. Cannot be set if `target_listener_name` is set.
  ApplicationGatewayRedirectConfiguration({
    this.id,
    this.includePath,
    this.includeQueryString,
    required this.name,
    required this.redirectType,
    this.targetListenerId,
    this.targetListenerName,
    this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'includePath': ?includePath,
      'includeQueryString': ?includeQueryString,
      'name': name,
      'redirectType': redirectType,
      'targetListenerId': ?targetListenerId,
      'targetListenerName': ?targetListenerName,
      'targetUrl': ?targetUrl,
    };
  }

  factory ApplicationGatewayRedirectConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRedirectConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      includePath: map['includePath'] == null ? null : map['includePath'] as bool,
      includeQueryString: map['includeQueryString'] == null ? null : map['includeQueryString'] as bool,
      name: map['name'] as String,
      redirectType: map['redirectType'] as String,
      targetListenerId: map['targetListenerId'] == null ? null : map['targetListenerId'] as String,
      targetListenerName: map['targetListenerName'] == null ? null : map['targetListenerName'] as String,
      targetUrl: map['targetUrl'] == null ? null : map['targetUrl'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRedirectConfiguration {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// Whether the path is included in the redirected URL.
  final pulumi.Input<bool> includePath;
  /// Whether to include the query string in the redirected URL.
  final pulumi.Input<bool> includeQueryString;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The type of redirect.
  final pulumi.Input<String> redirectType;
  final pulumi.Input<String> targetListenerId;
  /// The name of the listener to redirect to.
  final pulumi.Input<String> targetListenerName;
  /// The URL to redirect the request to.
  final pulumi.Input<String> targetUrl;

  /// Creates a new [GetApplicationGatewayRedirectConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [includePath] Whether the path is included in the redirected URL.
  /// [includeQueryString] Whether to include the query string in the redirected URL.
  /// [name] The name of this Application Gateway.
  /// [redirectType] The type of redirect.
  /// [targetListenerId] Required.
  /// [targetListenerName] The name of the listener to redirect to.
  /// [targetUrl] The URL to redirect the request to.
  const GetApplicationGatewayRedirectConfiguration({
    required this.id,
    required this.includePath,
    required this.includeQueryString,
    required this.name,
    required this.redirectType,
    required this.targetListenerId,
    required this.targetListenerName,
    required this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'includePath': includePath,
      'includeQueryString': includeQueryString,
      'name': name,
      'redirectType': redirectType,
      'targetListenerId': targetListenerId,
      'targetListenerName': targetListenerName,
      'targetUrl': targetUrl,
    };
  }

  factory GetApplicationGatewayRedirectConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRedirectConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
      includePath: pulumi.Input.fromValue(map['includePath'] as bool),
      includeQueryString: pulumi.Input.fromValue(map['includeQueryString'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      redirectType: pulumi.Input.fromValue(map['redirectType'] as String),
      targetListenerId: pulumi.Input.fromValue(map['targetListenerId'] as String),
      targetListenerName: pulumi.Input.fromValue(map['targetListenerName'] as String),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
    );
  }
}

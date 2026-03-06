// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SaasBotDefenseProfileProtectedEndpoint {
  /// Specifies the path to the web page to be protected by BD. For example, `/login`.
  final pulumi.Input<String>? endpoint;
  /// hostname or IP address of the web page to be protected by the Bot Defense
  final pulumi.Input<String>? host;
  /// Specifies whether the BIG-IP or F5 XC Bot Defense handles mitigation of malicious HTTP requests. This field is enabled only if the Service Level field is set to Advanced/Premium
  final pulumi.Input<String>? mitigationAction;
  /// Unique name for the protected endpoint
  final pulumi.Input<String> name;
  /// POST field to protect the path when it has a POST method, `enabled` or `disabled`
  final pulumi.Input<String>? post;
  /// PUT field to protect the path when it has a PUT method,`enabled` or `disabled`
  final pulumi.Input<String>? put;

  /// Creates a new [SaasBotDefenseProfileProtectedEndpoint].
  /// [endpoint] Specifies the path to the web page to be protected by BD. For example, `/login`.
  /// [host] hostname or IP address of the web page to be protected by the Bot Defense
  /// [mitigationAction] Specifies whether the BIG-IP or F5 XC Bot Defense handles mitigation of malicious HTTP requests. This field is enabled only if the Service Level field is set to Advanced/Premium
  /// [name] Unique name for the protected endpoint
  /// [post] POST field to protect the path when it has a POST method, `enabled` or `disabled`
  /// [put] PUT field to protect the path when it has a PUT method,`enabled` or `disabled`
  const SaasBotDefenseProfileProtectedEndpoint({
    this.endpoint,
    this.host,
    this.mitigationAction,
    required this.name,
    this.post,
    this.put,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'host': ?host,
      'mitigationAction': ?mitigationAction,
      'name': name,
      'post': ?post,
      'put': ?put,
    };
  }

  factory SaasBotDefenseProfileProtectedEndpoint.fromMap(Map<String, dynamic> map) {
    return SaasBotDefenseProfileProtectedEndpoint(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      post: (() { final guardedValue = map['post']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      put: (() { final guardedValue = map['put']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


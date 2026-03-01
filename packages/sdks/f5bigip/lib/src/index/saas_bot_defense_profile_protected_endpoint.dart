// ignore_for_file: unused_element, unnecessary_cast


class SaasBotDefenseProfileProtectedEndpoint {
  /// Specifies the path to the web page to be protected by BD. For example, `/login`.
  final String? endpoint;
  /// hostname or IP address of the web page to be protected by the Bot Defense
  final String? host;
  /// Specifies whether the BIG-IP or F5 XC Bot Defense handles mitigation of malicious HTTP requests. This field is enabled only if the Service Level field is set to Advanced/Premium
  final String? mitigationAction;
  /// Unique name for the protected endpoint
  final String name;
  /// POST field to protect the path when it has a POST method, `enabled` or `disabled`
  final String? post;
  /// PUT field to protect the path when it has a PUT method,`enabled` or `disabled`
  final String? put;

  /// Creates a new [SaasBotDefenseProfileProtectedEndpoint].
  /// [endpoint] Specifies the path to the web page to be protected by BD. For example, `/login`.
  /// [host] hostname or IP address of the web page to be protected by the Bot Defense
  /// [mitigationAction] Specifies whether the BIG-IP or F5 XC Bot Defense handles mitigation of malicious HTTP requests. This field is enabled only if the Service Level field is set to Advanced/Premium
  /// [name] Unique name for the protected endpoint
  /// [post] POST field to protect the path when it has a POST method, `enabled` or `disabled`
  /// [put] PUT field to protect the path when it has a PUT method,`enabled` or `disabled`
  SaasBotDefenseProfileProtectedEndpoint({
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
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      mitigationAction: map['mitigationAction'] == null ? null : map['mitigationAction'] as String,
      name: map['name'] as String,
      post: map['post'] == null ? null : map['post'] as String,
      put: map['put'] == null ? null : map['put'] as String,
    );
  }
}


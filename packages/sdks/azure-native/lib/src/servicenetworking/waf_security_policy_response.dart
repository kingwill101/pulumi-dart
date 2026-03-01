// ignore_for_file: unused_element, unnecessary_cast


/// Web Application Firewall Security Policy
class WafSecurityPolicyResponse {
  /// Resource ID of the Waf Security Policy
  final String id;

  /// Creates a new [WafSecurityPolicyResponse].
  /// [id] Resource ID of the Waf Security Policy
  WafSecurityPolicyResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafSecurityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return WafSecurityPolicyResponse(
      id: map['id'] as String,
    );
  }
}


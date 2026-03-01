// ignore_for_file: unused_element, unnecessary_cast


/// Web Application Firewall Security Policy
class WafSecurityPolicy {
  /// Resource ID of the Waf Security Policy
  final String id;

  /// Creates a new [WafSecurityPolicy].
  /// [id] Resource ID of the Waf Security Policy
  WafSecurityPolicy({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafSecurityPolicy.fromMap(Map<String, dynamic> map) {
    return WafSecurityPolicy(
      id: map['id'] as String,
    );
  }
}


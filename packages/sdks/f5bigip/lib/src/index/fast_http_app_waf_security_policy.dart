// ignore_for_file: unused_element, unnecessary_cast


class FastHttpAppWafSecurityPolicy {
  /// Setting `true` will enable FAST to create WAF Security Policy.
  final bool enable;

  /// Creates a new [FastHttpAppWafSecurityPolicy].
  /// [enable] Setting `true` will enable FAST to create WAF Security Policy.
  FastHttpAppWafSecurityPolicy({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory FastHttpAppWafSecurityPolicy.fromMap(Map<String, dynamic> map) {
    return FastHttpAppWafSecurityPolicy(
      enable: map['enable'] as bool,
    );
  }
}


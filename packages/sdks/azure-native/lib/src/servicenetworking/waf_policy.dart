// ignore_for_file: unused_element, unnecessary_cast


/// Web Application Firewall Policy
class WafPolicy {
  /// Resource ID of the WAF
  final String id;

  /// Creates a new [WafPolicy].
  /// [id] Resource ID of the WAF
  WafPolicy({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafPolicy.fromMap(Map<String, dynamic> map) {
    return WafPolicy(
      id: map['id'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Web Application Firewall Policy
class WafPolicy {
  /// Resource ID of the WAF
  final pulumi.Input<String> id;

  /// Creates a new [WafPolicy].
  /// [id] Resource ID of the WAF
  const WafPolicy({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafPolicy.fromMap(Map<String, dynamic> map) {
    return WafPolicy(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

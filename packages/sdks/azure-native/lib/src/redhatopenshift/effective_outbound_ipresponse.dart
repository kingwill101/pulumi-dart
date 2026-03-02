// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EffectiveOutboundIP represents an effective outbound IP resource of the cluster public load balancer.
class EffectiveOutboundIPResponse {
  /// The fully qualified Azure resource id of an IP address resource.
  final pulumi.Input<String>? id;

  /// Creates a new [EffectiveOutboundIPResponse].
  /// [id] The fully qualified Azure resource id of an IP address resource.
  EffectiveOutboundIPResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory EffectiveOutboundIPResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveOutboundIPResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}


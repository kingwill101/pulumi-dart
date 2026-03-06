// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of gVNIC feature.
class VirtualNICResponse {
  /// Whether gVNIC features are enabled in the node pool.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VirtualNICResponse].
  /// [enabled] Whether gVNIC features are enabled in the node pool.
  const VirtualNICResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VirtualNICResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNICResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}


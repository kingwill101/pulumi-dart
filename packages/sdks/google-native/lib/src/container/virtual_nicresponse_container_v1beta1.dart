// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of gVNIC feature.
class VirtualNICResponseContainerV1beta1 {
  /// Whether gVNIC features are enabled in the node pool.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VirtualNICResponseContainerV1beta1].
  /// [enabled] Whether gVNIC features are enabled in the node pool.
  const VirtualNICResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VirtualNICResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return VirtualNICResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}


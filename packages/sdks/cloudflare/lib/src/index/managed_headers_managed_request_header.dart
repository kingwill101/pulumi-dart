// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedHeadersManagedRequestHeader {
  /// Whether the Managed Transform is enabled.
  final pulumi.Input<bool> enabled;
  /// The human-readable identifier of the Managed Transform.
  final pulumi.Input<String> id;

  /// Creates a new [ManagedHeadersManagedRequestHeader].
  /// [enabled] Whether the Managed Transform is enabled.
  /// [id] The human-readable identifier of the Managed Transform.
  const ManagedHeadersManagedRequestHeader({
    required this.enabled,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
    };
  }

  factory ManagedHeadersManagedRequestHeader.fromMap(Map<String, dynamic> map) {
    return ManagedHeadersManagedRequestHeader(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

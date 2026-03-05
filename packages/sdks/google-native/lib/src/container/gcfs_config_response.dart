// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GcfsConfig contains configurations of Google Container File System (image streaming).
class GcfsConfigResponse {
  /// Whether to use GCFS.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcfsConfigResponse].
  /// [enabled] Whether to use GCFS.
  GcfsConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcfsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcfsConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}


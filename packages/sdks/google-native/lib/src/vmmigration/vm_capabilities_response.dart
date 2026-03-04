// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migrating VM source information about the VM capabilities needed for some Compute Engine features.
class VmCapabilitiesResponse {
  /// The last time OS capabilities list was updated.
  final pulumi.Input<String> lastOsCapabilitiesUpdateTime;

  /// Unordered list. List of certain VM OS capabilities needed for some Compute Engine features.
  final pulumi.Input<List<String>> osCapabilities;

  /// Creates a new [VmCapabilitiesResponse].
  /// [lastOsCapabilitiesUpdateTime] The last time OS capabilities list was updated.
  /// [osCapabilities] Unordered list. List of certain VM OS capabilities needed for some Compute Engine features.
  VmCapabilitiesResponse({
    required this.lastOsCapabilitiesUpdateTime,
    required this.osCapabilities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastOsCapabilitiesUpdateTime': lastOsCapabilitiesUpdateTime,
      'osCapabilities': osCapabilities,
    };
  }

  factory VmCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return VmCapabilitiesResponse(
      lastOsCapabilitiesUpdateTime: pulumi.Input.fromValue(
        map['lastOsCapabilitiesUpdateTime'] as String,
      ),
      osCapabilities: pulumi.Input.fromValue(
        (map['osCapabilities'] as List).cast<String>(),
      ),
    );
  }
}

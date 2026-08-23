// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeDataProtectionAdvancedRansomware {
  /// Whether the Advanced Ransomware Protection feature is enabled.
  final pulumi.Input<bool> protectionEnabled;

  /// Creates a new [GetVolumeDataProtectionAdvancedRansomware].
  /// [protectionEnabled] Whether the Advanced Ransomware Protection feature is enabled.
  const GetVolumeDataProtectionAdvancedRansomware({
    required this.protectionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protectionEnabled': protectionEnabled,
    };
  }

  factory GetVolumeDataProtectionAdvancedRansomware.fromMap(Map<String, dynamic> map) {
    return GetVolumeDataProtectionAdvancedRansomware(
      protectionEnabled: pulumi.Input.fromValue(map['protectionEnabled'] as bool),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_advanced_threat_protection_args_doc}
/// The set of arguments for AdvancedThreatProtection.
/// {@endtemplate}
/// {@macro pulumi_security_advanced_threat_protection_args_doc}
class AdvancedThreatProtectionArgs {
  /// Indicates whether Advanced Threat Protection is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// Advanced Threat Protection setting name.
  final pulumi.Input<String>? settingName;

  /// Creates a new [AdvancedThreatProtectionArgs].
  /// [isEnabled] Indicates whether Advanced Threat Protection is enabled.
  /// [resourceId] The identifier of the resource.
  /// [settingName] Advanced Threat Protection setting name.
  AdvancedThreatProtectionArgs({
    this.isEnabled,
    required this.resourceId,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'resourceId': resourceId,
      'settingName': ?settingName,
    };
  }

  factory AdvancedThreatProtectionArgs.fromMap(Map<String, dynamic> map) {
    return AdvancedThreatProtectionArgs(
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      resourceId: (map['resourceId'] as String).input(),
      settingName: map['settingName'] == null ? null : (map['settingName']! as String).input(),
    );
  }
}


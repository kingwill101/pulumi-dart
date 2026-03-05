// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_advanced_threat_protection_advanced_threat_protection_args_doc}
/// The set of arguments for AdvancedThreatProtection.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_advanced_threat_protection_advanced_threat_protection_args_doc}
class AdvancedThreatProtectionArgs {
  /// Should Advanced Threat Protection be enabled on this resource?
  final pulumi.Input<bool> enabled;
  /// The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [AdvancedThreatProtectionArgs].
  /// [enabled] Should Advanced Threat Protection be enabled on this resource?
  /// [targetResourceId] The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created.
  AdvancedThreatProtectionArgs({
    required this.enabled,
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'targetResourceId': targetResourceId,
    };
  }

  factory AdvancedThreatProtectionArgs.fromMap(Map<String, dynamic> map) {
    return AdvancedThreatProtectionArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
    );
  }
}


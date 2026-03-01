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
    pulumi.Output<bool>? isEnabled,
    required pulumi.Output<String> resourceId,
    pulumi.Output<String>? settingName,
  }) :
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      settingName = pulumi.Input.asOptionalInput<String>(settingName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'resourceId': resourceId,
      'settingName': ?settingName,
    };
  }

  factory AdvancedThreatProtectionArgs.fromMap(Map<String, dynamic> map) {
    return AdvancedThreatProtectionArgs(
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      settingName: map['settingName'] == null ? null : pulumi.Output.create<String>(map['settingName'] as String),
    );
  }
}


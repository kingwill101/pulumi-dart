// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_diagnostic_setting_enabled_log_retention_policy.dart';

class AadDiagnosticSettingEnabledLog {
  /// The log category for the Azure Active Directory Diagnostic.
  final pulumi.Input<String> category;
  final pulumi.Input<AadDiagnosticSettingEnabledLogRetentionPolicy?>? retentionPolicy;

  /// Creates a new [AadDiagnosticSettingEnabledLog].
  /// [category] The log category for the Azure Active Directory Diagnostic.
  /// [retentionPolicy] Optional.
  const AadDiagnosticSettingEnabledLog({
    required this.category,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<AadDiagnosticSettingEnabledLogRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory AadDiagnosticSettingEnabledLog.fromMap(Map<String, dynamic> map) {
    return AadDiagnosticSettingEnabledLog(
      category: pulumi.Input.fromValue(map['category'] as String),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AadDiagnosticSettingEnabledLogRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_enabled_log_retention_policy.dart';

class DiagnosticSettingEnabledLog {
  /// The name of a Diagnostic Log Category for this Resource.
  ///
  /// &gt; **NOTE:** The Log Categories available vary depending on the Resource being used. You may wish to use the `azure.monitoring.getDiagnosticCategories` Data Source or [list of service specific schemas](https://docs.microsoft.com/azure/azure-monitor/platform/resource-logs-schema#service-specific-schemas) to identify which categories are available for a given Resource.
  final pulumi.Input<String>? category;

  /// The name of a Diagnostic Log Category Group for this Resource.
  ///
  /// &gt; **NOTE:** Not all resources have category groups available.
  ///
  /// &gt; **NOTE:** Exactly one of `category` or `category_group` must be specified.
  final pulumi.Input<String>? categoryGroup;
  final pulumi.Input<DiagnosticSettingEnabledLogRetentionPolicy>?
  retentionPolicy;

  /// Creates a new [DiagnosticSettingEnabledLog].
  /// [category] The name of a Diagnostic Log Category for this Resource.
  /// [categoryGroup] The name of a Diagnostic Log Category Group for this Resource.
  /// [retentionPolicy] Optional.
  DiagnosticSettingEnabledLog({
    this.category,
    this.categoryGroup,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'categoryGroup': ?categoryGroup,
      'retentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DiagnosticSettingEnabledLogRetentionPolicy,
            Map<String, dynamic>
          >(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory DiagnosticSettingEnabledLog.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingEnabledLog(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      categoryGroup: (() {
        final guardedValue = map['categoryGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPolicy: (() {
        final guardedValue = map['retentionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiagnosticSettingEnabledLogRetentionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

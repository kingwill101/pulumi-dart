// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The NSP logging configuration properties.
class NspLoggingConfigurationProperties {
  /// The log categories to enable in the NSP logging configuration.
  final pulumi.Input<List<String>?>? enabledLogCategories;
  /// The version of the NSP logging configuration.
  final pulumi.Input<String?>? version;

  /// Creates a new [NspLoggingConfigurationProperties].
  /// [enabledLogCategories] The log categories to enable in the NSP logging configuration.
  /// [version] The version of the NSP logging configuration.
  const NspLoggingConfigurationProperties({
    this.enabledLogCategories,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledLogCategories': ?enabledLogCategories,
      'version': ?version,
    };
  }

  factory NspLoggingConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return NspLoggingConfigurationProperties(
      enabledLogCategories: (() { final guardedValue = map['enabledLogCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

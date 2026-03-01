// ignore_for_file: unused_element, unnecessary_cast


/// The NSP logging configuration properties.
class NspLoggingConfigurationProperties {
  /// The log categories to enable in the NSP logging configuration.
  final List<String>? enabledLogCategories;
  /// The version of the NSP logging configuration.
  final String? version;

  /// Creates a new [NspLoggingConfigurationProperties].
  /// [enabledLogCategories] The log categories to enable in the NSP logging configuration.
  /// [version] The version of the NSP logging configuration.
  NspLoggingConfigurationProperties({
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
      enabledLogCategories: map['enabledLogCategories'] == null ? null : (map['enabledLogCategories'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}


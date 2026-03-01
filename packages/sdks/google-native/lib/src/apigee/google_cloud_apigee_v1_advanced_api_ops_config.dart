// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Advanced API Ops add-on.
class GoogleCloudApigeeV1AdvancedApiOpsConfig {
  /// Flag that specifies whether the Advanced API Ops add-on is enabled.
  final bool? enabled;

  /// Creates a new [GoogleCloudApigeeV1AdvancedApiOpsConfig].
  /// [enabled] Flag that specifies whether the Advanced API Ops add-on is enabled.
  GoogleCloudApigeeV1AdvancedApiOpsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GoogleCloudApigeeV1AdvancedApiOpsConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AdvancedApiOpsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


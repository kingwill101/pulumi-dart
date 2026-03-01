// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for Cloud Armor.
class SecurityPolicyCloudArmorConfig {
  /// If set to true, enables Cloud Armor Machine Learning.
  final bool? enableMl;

  /// Creates a new [SecurityPolicyCloudArmorConfig].
  /// [enableMl] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyCloudArmorConfig({
    this.enableMl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMl': ?enableMl,
    };
  }

  factory SecurityPolicyCloudArmorConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyCloudArmorConfig(
      enableMl: map['enableMl'] == null ? null : map['enableMl'] as bool,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class ControlOrganizationIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final String? expireTime;

  /// Creates a new [ControlOrganizationIntelligenceConfigTrialConfig].
  /// [expireTime] (Output)
  ControlOrganizationIntelligenceConfigTrialConfig({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
    };
  }

  factory ControlOrganizationIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigTrialConfig(
      expireTime: map['expireTime'] == null ? null : map['expireTime'] as String,
    );
  }
}


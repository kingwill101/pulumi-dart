// ignore_for_file: unused_element, unnecessary_cast


class ControlFolderIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final String? expireTime;

  /// Creates a new [ControlFolderIntelligenceConfigTrialConfig].
  /// [expireTime] (Output)
  ControlFolderIntelligenceConfigTrialConfig({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
    };
  }

  factory ControlFolderIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigTrialConfig(
      expireTime: map['expireTime'] == null ? null : map['expireTime'] as String,
    );
  }
}


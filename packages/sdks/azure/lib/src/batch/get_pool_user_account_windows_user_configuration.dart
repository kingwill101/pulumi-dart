// ignore_for_file: unused_element, unnecessary_cast


class GetPoolUserAccountWindowsUserConfiguration {
  /// Specifies login mode for the user.
  final String loginMode;

  /// Creates a new [GetPoolUserAccountWindowsUserConfiguration].
  /// [loginMode] Specifies login mode for the user.
  GetPoolUserAccountWindowsUserConfiguration({
    required this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': loginMode,
    };
  }

  factory GetPoolUserAccountWindowsUserConfiguration.fromMap(Map<String, dynamic> map) {
    return GetPoolUserAccountWindowsUserConfiguration(
      loginMode: map['loginMode'] as String,
    );
  }
}


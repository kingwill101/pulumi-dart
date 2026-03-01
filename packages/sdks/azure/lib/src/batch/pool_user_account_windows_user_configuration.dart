// ignore_for_file: unused_element, unnecessary_cast


class PoolUserAccountWindowsUserConfiguration {
  /// Specifies login mode for the user. The default value for VirtualMachineConfiguration pools is interactive mode and for CloudServiceConfiguration pools is batch mode. Values supported are "Batch" and "Interactive".
  final String loginMode;

  /// Creates a new [PoolUserAccountWindowsUserConfiguration].
  /// [loginMode] Specifies login mode for the user. The default value for VirtualMachineConfiguration pools is interactive mode and for CloudServiceConfiguration pools is batch mode. Values supported are "Batch" and "Interactive".
  PoolUserAccountWindowsUserConfiguration({
    required this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': loginMode,
    };
  }

  factory PoolUserAccountWindowsUserConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolUserAccountWindowsUserConfiguration(
      loginMode: map['loginMode'] as String,
    );
  }
}


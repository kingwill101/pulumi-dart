// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppSlotSiteConfigApplicationStack {
  /// The version of .Net. Possible values are `v3.0`, `v4.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`. Defaults to `v4.0`.
  final String? dotnetVersion;
  /// The version of Java to use. Possible values are `1.8`, `11`, `17` and `21`.
  final String? javaVersion;
  /// The version of Node to use. Possible values are `~12`, `~14`, `~16`, `~18`, `~20`, `~22` and `~24`.
  final String? nodeVersion;
  /// The PowerShell Core version to use. Possible values are `7`, `7.2`, and `7.4`.
  final String? powershellCoreVersion;
  /// Does the Function App use a custom Application Stack?
  final bool? useCustomRuntime;
  /// Should the DotNet process use an isolated runtime. Defaults to `false`.
  final bool? useDotnetIsolatedRuntime;

  /// Creates a new [WindowsFunctionAppSlotSiteConfigApplicationStack].
  /// [dotnetVersion] The version of .Net. Possible values are `v3.0`, `v4.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`. Defaults to `v4.0`.
  /// [javaVersion] The version of Java to use. Possible values are `1.8`, `11`, `17` and `21`.
  /// [nodeVersion] The version of Node to use. Possible values are `~12`, `~14`, `~16`, `~18`, `~20`, `~22` and `~24`.
  /// [powershellCoreVersion] The PowerShell Core version to use. Possible values are `7`, `7.2`, and `7.4`.
  /// [useCustomRuntime] Does the Function App use a custom Application Stack?
  /// [useDotnetIsolatedRuntime] Should the DotNet process use an isolated runtime. Defaults to `false`.
  WindowsFunctionAppSlotSiteConfigApplicationStack({
    this.dotnetVersion,
    this.javaVersion,
    this.nodeVersion,
    this.powershellCoreVersion,
    this.useCustomRuntime,
    this.useDotnetIsolatedRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnetVersion': ?dotnetVersion,
      'javaVersion': ?javaVersion,
      'nodeVersion': ?nodeVersion,
      'powershellCoreVersion': ?powershellCoreVersion,
      'useCustomRuntime': ?useCustomRuntime,
      'useDotnetIsolatedRuntime': ?useDotnetIsolatedRuntime,
    };
  }

  factory WindowsFunctionAppSlotSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotSiteConfigApplicationStack(
      dotnetVersion: map['dotnetVersion'] == null ? null : map['dotnetVersion'] as String,
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] == null ? null : map['nodeVersion'] as String,
      powershellCoreVersion: map['powershellCoreVersion'] == null ? null : map['powershellCoreVersion'] as String,
      useCustomRuntime: map['useCustomRuntime'] == null ? null : map['useCustomRuntime'] as bool,
      useDotnetIsolatedRuntime: map['useDotnetIsolatedRuntime'] == null ? null : map['useDotnetIsolatedRuntime'] as bool,
    );
  }
}


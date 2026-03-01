// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppSiteConfigApplicationStack {
  /// The version of .NET to use. Possible values include `v3.0`, `v4.0` `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`. Defaults to `v4.0`.
  final String? dotnetVersion;
  /// The Version of Java to use. Supported versions include `1.8`, `11`, `17`, `21` (In-Preview).
  final String? javaVersion;
  /// The version of Node to run. Possible values include `~12`, `~14`, `~16`, `~18` `~20`, `~22` and `~24`.
  final String? nodeVersion;
  /// The version of PowerShell Core to run. Possible values are `7`, `7.2`, and `7.4`.
  ///
  /// > **Note:** A value of `7` will provide the latest stable version. `7.2` is in preview at the time of writing.
  final String? powershellCoreVersion;
  /// Should the Windows Function App use a custom runtime?
  final bool? useCustomRuntime;
  /// Should the DotNet process use an isolated runtime. Defaults to `false`.
  final bool? useDotnetIsolatedRuntime;

  /// Creates a new [WindowsFunctionAppSiteConfigApplicationStack].
  /// [dotnetVersion] The version of .NET to use. Possible values include `v3.0`, `v4.0` `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`. Defaults to `v4.0`.
  /// [javaVersion] The Version of Java to use. Supported versions include `1.8`, `11`, `17`, `21` (In-Preview).
  /// [nodeVersion] The version of Node to run. Possible values include `~12`, `~14`, `~16`, `~18` `~20`, `~22` and `~24`.
  /// [powershellCoreVersion] The version of PowerShell Core to run. Possible values are `7`, `7.2`, and `7.4`.
  /// [useCustomRuntime] Should the Windows Function App use a custom runtime?
  /// [useDotnetIsolatedRuntime] Should the DotNet process use an isolated runtime. Defaults to `false`.
  WindowsFunctionAppSiteConfigApplicationStack({
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

  factory WindowsFunctionAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSiteConfigApplicationStack(
      dotnetVersion: map['dotnetVersion'] == null ? null : map['dotnetVersion'] as String,
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] == null ? null : map['nodeVersion'] as String,
      powershellCoreVersion: map['powershellCoreVersion'] == null ? null : map['powershellCoreVersion'] as String,
      useCustomRuntime: map['useCustomRuntime'] == null ? null : map['useCustomRuntime'] as bool,
      useDotnetIsolatedRuntime: map['useDotnetIsolatedRuntime'] == null ? null : map['useDotnetIsolatedRuntime'] as bool,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSiteConfigApplicationStack {
  /// The version of .NET to use. Possible values include `v3.0`, `v4.0` `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`. Defaults to `v4.0`.
  final pulumi.Input<String>? dotnetVersion;
  /// The Version of Java to use. Supported versions include `1.8`, `11`, `17`, `21` (In-Preview).
  final pulumi.Input<String>? javaVersion;
  /// The version of Node to run. Possible values include `~12`, `~14`, `~16`, `~18` `~20`, `~22` and `~24`.
  final pulumi.Input<String>? nodeVersion;
  /// The version of PowerShell Core to run. Possible values are `7`, `7.2`, and `7.4`.
  ///
  /// &gt; **Note:** A value of `7` will provide the latest stable version. `7.2` is in preview at the time of writing.
  final pulumi.Input<String>? powershellCoreVersion;
  /// Should the Windows Function App use a custom runtime?
  final pulumi.Input<bool>? useCustomRuntime;
  /// Should the DotNet process use an isolated runtime. Defaults to `false`.
  final pulumi.Input<bool>? useDotnetIsolatedRuntime;

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
      dotnetVersion: (() { final guardedValue = map['dotnetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaVersion: (() { final guardedValue = map['javaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powershellCoreVersion: (() { final guardedValue = map['powershellCoreVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCustomRuntime: (() { final guardedValue = map['useCustomRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useDotnetIsolatedRuntime: (() { final guardedValue = map['useDotnetIsolatedRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


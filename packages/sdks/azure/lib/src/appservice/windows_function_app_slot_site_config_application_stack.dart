// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSlotSiteConfigApplicationStack {
  /// The version of .Net. Possible values are `v3.0`, `v4.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`. Defaults to `v4.0`.
  final pulumi.Input<String>? dotnetVersion;
  /// The version of Java to use. Possible values are `1.8`, `11`, `17` and `21`.
  final pulumi.Input<String>? javaVersion;
  /// The version of Node to use. Possible values are `~12`, `~14`, `~16`, `~18`, `~20`, `~22` and `~24`.
  final pulumi.Input<String>? nodeVersion;
  /// The PowerShell Core version to use. Possible values are `7`, `7.2`, and `7.4`.
  final pulumi.Input<String>? powershellCoreVersion;
  /// Does the Function App use a custom Application Stack?
  final pulumi.Input<bool>? useCustomRuntime;
  /// Should the DotNet process use an isolated runtime. Defaults to `false`.
  final pulumi.Input<bool>? useDotnetIsolatedRuntime;

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
      dotnetVersion: (() { final guardedValue = map['dotnetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaVersion: (() { final guardedValue = map['javaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powershellCoreVersion: (() { final guardedValue = map['powershellCoreVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCustomRuntime: (() { final guardedValue = map['useCustomRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useDotnetIsolatedRuntime: (() { final guardedValue = map['useDotnetIsolatedRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


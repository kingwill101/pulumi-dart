// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppSiteConfigApplicationStack {
  /// The version of .Net to use.
  final pulumi.Input<String> dotnetVersion;
  /// The version of Java to use.
  final pulumi.Input<String> javaVersion;
  /// The version of Node to use.
  final pulumi.Input<String> nodeVersion;
  /// The version of PowerShell Core to use.
  final pulumi.Input<String> powershellCoreVersion;
  /// Is the Windows Function App using a custom runtime?.
  final pulumi.Input<bool> useCustomRuntime;
  final pulumi.Input<bool> useDotnetIsolatedRuntime;

  /// Creates a new [GetWindowsFunctionAppSiteConfigApplicationStack].
  /// [dotnetVersion] The version of .Net to use.
  /// [javaVersion] The version of Java to use.
  /// [nodeVersion] The version of Node to use.
  /// [powershellCoreVersion] The version of PowerShell Core to use.
  /// [useCustomRuntime] Is the Windows Function App using a custom runtime?.
  /// [useDotnetIsolatedRuntime] Required.
  GetWindowsFunctionAppSiteConfigApplicationStack({
    required this.dotnetVersion,
    required this.javaVersion,
    required this.nodeVersion,
    required this.powershellCoreVersion,
    required this.useCustomRuntime,
    required this.useDotnetIsolatedRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnetVersion': dotnetVersion,
      'javaVersion': javaVersion,
      'nodeVersion': nodeVersion,
      'powershellCoreVersion': powershellCoreVersion,
      'useCustomRuntime': useCustomRuntime,
      'useDotnetIsolatedRuntime': useDotnetIsolatedRuntime,
    };
  }

  factory GetWindowsFunctionAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigApplicationStack(
      dotnetVersion: (map['dotnetVersion'] as String).input(),
      javaVersion: (map['javaVersion'] as String).input(),
      nodeVersion: (map['nodeVersion'] as String).input(),
      powershellCoreVersion: (map['powershellCoreVersion'] as String).input(),
      useCustomRuntime: (map['useCustomRuntime'] as bool).input(),
      useDotnetIsolatedRuntime: (map['useDotnetIsolatedRuntime'] as bool).input(),
    );
  }
}


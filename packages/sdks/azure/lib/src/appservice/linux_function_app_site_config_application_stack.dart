// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_site_config_application_stack_docker.dart';

class LinuxFunctionAppSiteConfigApplicationStack {
  /// One or more `docker` blocks as defined below.
  final pulumi.Input<List<LinuxFunctionAppSiteConfigApplicationStackDocker>>? dockers;
  /// The version of .NET to use. Possible values include `3.1`, `6.0`, `7.0`, `8.0`, `9.0` and `10.0`.
  final pulumi.Input<String>? dotnetVersion;
  /// The Version of Java to use. Supported versions include `8`, `11`, `17`, `21`.
  ///
  /// &gt; **Note:** The value `21` is currently in Preview for `java_version`.
  final pulumi.Input<String>? javaVersion;
  /// The version of Node to run. Possible values include `12`, `14`, `16`, `18`, `20`, `22` and `24`.
  final pulumi.Input<String>? nodeVersion;
  /// The version of PowerShell Core to run. Possible values are `7`, `7.2`, and `7.4`.
  final pulumi.Input<String>? powershellCoreVersion;
  /// The version of Python to run. Possible values are `3.14`, `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
  final pulumi.Input<String>? pythonVersion;
  /// Should the Linux Function App use a custom runtime?
  final pulumi.Input<bool>? useCustomRuntime;
  /// Should the DotNet process use an isolated runtime. Defaults to `false`.
  final pulumi.Input<bool>? useDotnetIsolatedRuntime;

  /// Creates a new [LinuxFunctionAppSiteConfigApplicationStack].
  /// [dockers] One or more `docker` blocks as defined below.
  /// [dotnetVersion] The version of .NET to use. Possible values include `3.1`, `6.0`, `7.0`, `8.0`, `9.0` and `10.0`.
  /// [javaVersion] The Version of Java to use. Supported versions include `8`, `11`, `17`, `21`.
  /// [nodeVersion] The version of Node to run. Possible values include `12`, `14`, `16`, `18`, `20`, `22` and `24`.
  /// [powershellCoreVersion] The version of PowerShell Core to run. Possible values are `7`, `7.2`, and `7.4`.
  /// [pythonVersion] The version of Python to run. Possible values are `3.14`, `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
  /// [useCustomRuntime] Should the Linux Function App use a custom runtime?
  /// [useDotnetIsolatedRuntime] Should the DotNet process use an isolated runtime. Defaults to `false`.
  LinuxFunctionAppSiteConfigApplicationStack({
    this.dockers,
    this.dotnetVersion,
    this.javaVersion,
    this.nodeVersion,
    this.powershellCoreVersion,
    this.pythonVersion,
    this.useCustomRuntime,
    this.useDotnetIsolatedRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockers': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSiteConfigApplicationStackDocker>, List<Map<String, dynamic>>>(dockers, (value) => pulumi.Input.encodeList<LinuxFunctionAppSiteConfigApplicationStackDocker, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dotnetVersion': ?dotnetVersion,
      'javaVersion': ?javaVersion,
      'nodeVersion': ?nodeVersion,
      'powershellCoreVersion': ?powershellCoreVersion,
      'pythonVersion': ?pythonVersion,
      'useCustomRuntime': ?useCustomRuntime,
      'useDotnetIsolatedRuntime': ?useDotnetIsolatedRuntime,
    };
  }

  factory LinuxFunctionAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSiteConfigApplicationStack(
      dockers: (() { final guardedValue = map['dockers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxFunctionAppSiteConfigApplicationStackDocker>(guardedValue, (value) => LinuxFunctionAppSiteConfigApplicationStackDocker.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dotnetVersion: (() { final guardedValue = map['dotnetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaVersion: (() { final guardedValue = map['javaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powershellCoreVersion: (() { final guardedValue = map['powershellCoreVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonVersion: (() { final guardedValue = map['pythonVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCustomRuntime: (() { final guardedValue = map['useCustomRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useDotnetIsolatedRuntime: (() { final guardedValue = map['useDotnetIsolatedRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


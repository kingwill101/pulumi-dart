// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_site_config_application_stack_docker.dart';

class GetLinuxFunctionAppSiteConfigApplicationStack {
  /// One or more `docker` blocks as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigApplicationStackDocker>> dockers;
  /// The version of .NET used.
  final pulumi.Input<String> dotnetVersion;
  /// The Version of Java used.
  final pulumi.Input<String> javaVersion;
  /// The version of Node used.
  final pulumi.Input<String> nodeVersion;
  /// The version of PowerShell Core used.
  final pulumi.Input<String> powershellCoreVersion;
  /// The version of Python used.
  final pulumi.Input<String> pythonVersion;
  /// Does the Linux Function App use a custom runtime?
  final pulumi.Input<bool> useCustomRuntime;
  final pulumi.Input<bool> useDotnetIsolatedRuntime;

  /// Creates a new [GetLinuxFunctionAppSiteConfigApplicationStack].
  /// [dockers] One or more `docker` blocks as defined below.
  /// [dotnetVersion] The version of .NET used.
  /// [javaVersion] The Version of Java used.
  /// [nodeVersion] The version of Node used.
  /// [powershellCoreVersion] The version of PowerShell Core used.
  /// [pythonVersion] The version of Python used.
  /// [useCustomRuntime] Does the Linux Function App use a custom runtime?
  /// [useDotnetIsolatedRuntime] Required.
  GetLinuxFunctionAppSiteConfigApplicationStack({
    required this.dockers,
    required this.dotnetVersion,
    required this.javaVersion,
    required this.nodeVersion,
    required this.powershellCoreVersion,
    required this.pythonVersion,
    required this.useCustomRuntime,
    required this.useDotnetIsolatedRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockers': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigApplicationStackDocker>, List<Map<String, dynamic>>>(dockers, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigApplicationStackDocker, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dotnetVersion': dotnetVersion,
      'javaVersion': javaVersion,
      'nodeVersion': nodeVersion,
      'powershellCoreVersion': powershellCoreVersion,
      'pythonVersion': pythonVersion,
      'useCustomRuntime': useCustomRuntime,
      'useDotnetIsolatedRuntime': useDotnetIsolatedRuntime,
    };
  }

  factory GetLinuxFunctionAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigApplicationStack(
      dockers: (pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigApplicationStackDocker>(map['dockers'], (value) => GetLinuxFunctionAppSiteConfigApplicationStackDocker.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dotnetVersion: (map['dotnetVersion'] as String).input(),
      javaVersion: (map['javaVersion'] as String).input(),
      nodeVersion: (map['nodeVersion'] as String).input(),
      powershellCoreVersion: (map['powershellCoreVersion'] as String).input(),
      pythonVersion: (map['pythonVersion'] as String).input(),
      useCustomRuntime: (map['useCustomRuntime'] as bool).input(),
      useDotnetIsolatedRuntime: (map['useDotnetIsolatedRuntime'] as bool).input(),
    );
  }
}


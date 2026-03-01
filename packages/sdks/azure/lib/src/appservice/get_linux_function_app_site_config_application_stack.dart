// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_site_config_application_stack_docker.dart';

class GetLinuxFunctionAppSiteConfigApplicationStack {
  /// One or more `docker` blocks as defined below.
  final List<GetLinuxFunctionAppSiteConfigApplicationStackDocker> dockers;
  /// The version of .NET used.
  final String dotnetVersion;
  /// The Version of Java used.
  final String javaVersion;
  /// The version of Node used.
  final String nodeVersion;
  /// The version of PowerShell Core used.
  final String powershellCoreVersion;
  /// The version of Python used.
  final String pythonVersion;
  /// Does the Linux Function App use a custom runtime?
  final bool useCustomRuntime;
  final bool useDotnetIsolatedRuntime;

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
      'dockers': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigApplicationStackDocker, Map<String, dynamic>>(dockers, (value) => value.toMap()),
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
      dockers: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigApplicationStackDocker>(map['dockers'], (value) => GetLinuxFunctionAppSiteConfigApplicationStackDocker.fromMap((value as Map).cast<String, dynamic>())),
      dotnetVersion: map['dotnetVersion'] as String,
      javaVersion: map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] as String,
      powershellCoreVersion: map['powershellCoreVersion'] as String,
      pythonVersion: map['pythonVersion'] as String,
      useCustomRuntime: map['useCustomRuntime'] as bool,
      useDotnetIsolatedRuntime: map['useDotnetIsolatedRuntime'] as bool,
    );
  }
}


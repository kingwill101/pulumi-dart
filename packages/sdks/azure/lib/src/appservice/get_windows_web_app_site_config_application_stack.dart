// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppSiteConfigApplicationStack {
  /// The Current Stack value of the Windows Web App.
  final pulumi.Input<String> currentStack;
  /// The docker image, including tag, used by this Windows Web App.
  final pulumi.Input<String> dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  final pulumi.Input<String> dockerRegistryPassword;
  /// The URL of the container registry where the `docker_image_name` is located.
  final pulumi.Input<String> dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final pulumi.Input<String> dockerRegistryUsername;
  final pulumi.Input<String> dotnetCoreVersion;
  /// The version of .NET in use.
  final pulumi.Input<String> dotnetVersion;
  /// The Java Container in use.
  final pulumi.Input<String> javaContainer;
  /// The Version of the Java Container in use.
  final pulumi.Input<String> javaContainerVersion;
  final pulumi.Input<bool> javaEmbeddedServerEnabled;
  /// The Version of Java in use.
  final pulumi.Input<String> javaVersion;
  /// The Version of Node in use.
  final pulumi.Input<String> nodeVersion;
  /// The Version of the PHP in use.
  final pulumi.Input<String> phpVersion;
  final pulumi.Input<bool> python;
  /// The Version of Python in use.
  final pulumi.Input<String> pythonVersion;
  final pulumi.Input<String> tomcatVersion;

  /// Creates a new [GetWindowsWebAppSiteConfigApplicationStack].
  /// [currentStack] The Current Stack value of the Windows Web App.
  /// [dockerImageName] The docker image, including tag, used by this Windows Web App.
  /// [dockerRegistryPassword] The User Name to use for authentication against the registry to pull the image.
  /// [dockerRegistryUrl] The URL of the container registry where the `docker_image_name` is located.
  /// [dockerRegistryUsername] The User Name to use for authentication against the registry to pull the image.
  /// [dotnetCoreVersion] Required.
  /// [dotnetVersion] The version of .NET in use.
  /// [javaContainer] The Java Container in use.
  /// [javaContainerVersion] The Version of the Java Container in use.
  /// [javaEmbeddedServerEnabled] Required.
  /// [javaVersion] The Version of Java in use.
  /// [nodeVersion] The Version of Node in use.
  /// [phpVersion] The Version of the PHP in use.
  /// [python] Required.
  /// [pythonVersion] The Version of Python in use.
  /// [tomcatVersion] Required.
  GetWindowsWebAppSiteConfigApplicationStack({
    required this.currentStack,
    required this.dockerImageName,
    required this.dockerRegistryPassword,
    required this.dockerRegistryUrl,
    required this.dockerRegistryUsername,
    required this.dotnetCoreVersion,
    required this.dotnetVersion,
    required this.javaContainer,
    required this.javaContainerVersion,
    required this.javaEmbeddedServerEnabled,
    required this.javaVersion,
    required this.nodeVersion,
    required this.phpVersion,
    required this.python,
    required this.pythonVersion,
    required this.tomcatVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentStack': currentStack,
      'dockerImageName': dockerImageName,
      'dockerRegistryPassword': dockerRegistryPassword,
      'dockerRegistryUrl': dockerRegistryUrl,
      'dockerRegistryUsername': dockerRegistryUsername,
      'dotnetCoreVersion': dotnetCoreVersion,
      'dotnetVersion': dotnetVersion,
      'javaContainer': javaContainer,
      'javaContainerVersion': javaContainerVersion,
      'javaEmbeddedServerEnabled': javaEmbeddedServerEnabled,
      'javaVersion': javaVersion,
      'nodeVersion': nodeVersion,
      'phpVersion': phpVersion,
      'python': python,
      'pythonVersion': pythonVersion,
      'tomcatVersion': tomcatVersion,
    };
  }

  factory GetWindowsWebAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigApplicationStack(
      currentStack: (map['currentStack'] as String).input(),
      dockerImageName: (map['dockerImageName'] as String).input(),
      dockerRegistryPassword: (map['dockerRegistryPassword'] as String).input(),
      dockerRegistryUrl: (map['dockerRegistryUrl'] as String).input(),
      dockerRegistryUsername: (map['dockerRegistryUsername'] as String).input(),
      dotnetCoreVersion: (map['dotnetCoreVersion'] as String).input(),
      dotnetVersion: (map['dotnetVersion'] as String).input(),
      javaContainer: (map['javaContainer'] as String).input(),
      javaContainerVersion: (map['javaContainerVersion'] as String).input(),
      javaEmbeddedServerEnabled: (map['javaEmbeddedServerEnabled'] as bool).input(),
      javaVersion: (map['javaVersion'] as String).input(),
      nodeVersion: (map['nodeVersion'] as String).input(),
      phpVersion: (map['phpVersion'] as String).input(),
      python: (map['python'] as bool).input(),
      pythonVersion: (map['pythonVersion'] as String).input(),
      tomcatVersion: (map['tomcatVersion'] as String).input(),
    );
  }
}


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

  factory GetWindowsWebAppSiteConfigApplicationStack.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsWebAppSiteConfigApplicationStack(
      currentStack: pulumi.Input.fromValue(map['currentStack'] as String),
      dockerImageName: pulumi.Input.fromValue(map['dockerImageName'] as String),
      dockerRegistryPassword: pulumi.Input.fromValue(
        map['dockerRegistryPassword'] as String,
      ),
      dockerRegistryUrl: pulumi.Input.fromValue(
        map['dockerRegistryUrl'] as String,
      ),
      dockerRegistryUsername: pulumi.Input.fromValue(
        map['dockerRegistryUsername'] as String,
      ),
      dotnetCoreVersion: pulumi.Input.fromValue(
        map['dotnetCoreVersion'] as String,
      ),
      dotnetVersion: pulumi.Input.fromValue(map['dotnetVersion'] as String),
      javaContainer: pulumi.Input.fromValue(map['javaContainer'] as String),
      javaContainerVersion: pulumi.Input.fromValue(
        map['javaContainerVersion'] as String,
      ),
      javaEmbeddedServerEnabled: pulumi.Input.fromValue(
        map['javaEmbeddedServerEnabled'] as bool,
      ),
      javaVersion: pulumi.Input.fromValue(map['javaVersion'] as String),
      nodeVersion: pulumi.Input.fromValue(map['nodeVersion'] as String),
      phpVersion: pulumi.Input.fromValue(map['phpVersion'] as String),
      python: pulumi.Input.fromValue(map['python'] as bool),
      pythonVersion: pulumi.Input.fromValue(map['pythonVersion'] as String),
      tomcatVersion: pulumi.Input.fromValue(map['tomcatVersion'] as String),
    );
  }
}

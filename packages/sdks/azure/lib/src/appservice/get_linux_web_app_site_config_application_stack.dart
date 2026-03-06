// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigApplicationStack {
  /// The docker image, including tag, used by this Linux Web App.
  final pulumi.Input<String> dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  final pulumi.Input<String> dockerRegistryPassword;
  /// The URL of the container registry where the `docker_image_name` is located.
  final pulumi.Input<String> dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final pulumi.Input<String> dockerRegistryUsername;
  /// The version of .NET in use.
  final pulumi.Input<String> dotnetVersion;
  final pulumi.Input<String> goVersion;
  /// The Java server type.
  final pulumi.Input<String> javaServer;
  /// The Version of the `java_server` in use.
  final pulumi.Input<String> javaServerVersion;
  /// The Version of Java in use.
  final pulumi.Input<String> javaVersion;
  /// The version of Node in use.
  final pulumi.Input<String> nodeVersion;
  /// The version of PHP in use.
  final pulumi.Input<String> phpVersion;
  /// The version of Python in use.
  final pulumi.Input<String> pythonVersion;
  /// The version of Ruby in use.
  final pulumi.Input<String> rubyVersion;

  /// Creates a new [GetLinuxWebAppSiteConfigApplicationStack].
  /// [dockerImageName] The docker image, including tag, used by this Linux Web App.
  /// [dockerRegistryPassword] The User Name to use for authentication against the registry to pull the image.
  /// [dockerRegistryUrl] The URL of the container registry where the `docker_image_name` is located.
  /// [dockerRegistryUsername] The User Name to use for authentication against the registry to pull the image.
  /// [dotnetVersion] The version of .NET in use.
  /// [goVersion] Required.
  /// [javaServer] The Java server type.
  /// [javaServerVersion] The Version of the `java_server` in use.
  /// [javaVersion] The Version of Java in use.
  /// [nodeVersion] The version of Node in use.
  /// [phpVersion] The version of PHP in use.
  /// [pythonVersion] The version of Python in use.
  /// [rubyVersion] The version of Ruby in use.
  const GetLinuxWebAppSiteConfigApplicationStack({
    required this.dockerImageName,
    required this.dockerRegistryPassword,
    required this.dockerRegistryUrl,
    required this.dockerRegistryUsername,
    required this.dotnetVersion,
    required this.goVersion,
    required this.javaServer,
    required this.javaServerVersion,
    required this.javaVersion,
    required this.nodeVersion,
    required this.phpVersion,
    required this.pythonVersion,
    required this.rubyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImageName': dockerImageName,
      'dockerRegistryPassword': dockerRegistryPassword,
      'dockerRegistryUrl': dockerRegistryUrl,
      'dockerRegistryUsername': dockerRegistryUsername,
      'dotnetVersion': dotnetVersion,
      'goVersion': goVersion,
      'javaServer': javaServer,
      'javaServerVersion': javaServerVersion,
      'javaVersion': javaVersion,
      'nodeVersion': nodeVersion,
      'phpVersion': phpVersion,
      'pythonVersion': pythonVersion,
      'rubyVersion': rubyVersion,
    };
  }

  factory GetLinuxWebAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigApplicationStack(
      dockerImageName: pulumi.Input.fromValue(map['dockerImageName'] as String),
      dockerRegistryPassword: pulumi.Input.fromValue(map['dockerRegistryPassword'] as String),
      dockerRegistryUrl: pulumi.Input.fromValue(map['dockerRegistryUrl'] as String),
      dockerRegistryUsername: pulumi.Input.fromValue(map['dockerRegistryUsername'] as String),
      dotnetVersion: pulumi.Input.fromValue(map['dotnetVersion'] as String),
      goVersion: pulumi.Input.fromValue(map['goVersion'] as String),
      javaServer: pulumi.Input.fromValue(map['javaServer'] as String),
      javaServerVersion: pulumi.Input.fromValue(map['javaServerVersion'] as String),
      javaVersion: pulumi.Input.fromValue(map['javaVersion'] as String),
      nodeVersion: pulumi.Input.fromValue(map['nodeVersion'] as String),
      phpVersion: pulumi.Input.fromValue(map['phpVersion'] as String),
      pythonVersion: pulumi.Input.fromValue(map['pythonVersion'] as String),
      rubyVersion: pulumi.Input.fromValue(map['rubyVersion'] as String),
    );
  }
}


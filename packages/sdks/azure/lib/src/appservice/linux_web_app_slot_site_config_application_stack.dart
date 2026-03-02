// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotSiteConfigApplicationStack {
  /// The docker image, including tag, to be used. e.g. `appsvc/staticsite:latest`.
  final pulumi.Input<String>? dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  ///
  /// > **Note:** `docker_registry_url`, `docker_registry_username`, and `docker_registry_password` replace the use of the `app_settings` values of `DOCKER_REGISTRY_SERVER_URL`, `DOCKER_REGISTRY_SERVER_USERNAME` and `DOCKER_REGISTRY_SERVER_PASSWORD` respectively, these values will be managed by the provider and should not be specified in the `app_settings` map.
  final pulumi.Input<String>? dockerRegistryPassword;
  /// The URL of the container registry where the `docker_image_name` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `docker_image_name`.
  final pulumi.Input<String>? dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final pulumi.Input<String>? dockerRegistryUsername;
  /// The version of .NET to use. Possible values include `3.1`, `5.0`, `6.0`, `7.0`, `8.0`, `9.0` and `10.0`.
  final pulumi.Input<String>? dotnetVersion;
  /// The version of Go to use. Possible values include `1.18`, and `1.19`.
  final pulumi.Input<String>? goVersion;
  /// The Java server type. Possible values include `JAVA`, `TOMCAT`, and `JBOSSEAP`.
  ///
  /// > **Note:** `JBOSSEAP` requires a Premium Service Plan SKU to be a valid option.
  final pulumi.Input<String>? javaServer;
  /// The Version of the `java_server` to use.
  final pulumi.Input<String>? javaServerVersion;
  /// The Version of Java to use. Possible values are `8`, `11`, `17` and `21`.
  ///
  /// > **Note:** The valid version combinations for `java_version`, `java_server` and `java_server_version` can be checked from the command line via `az webapp list-runtimes --os-type linux`.
  final pulumi.Input<String>? javaVersion;
  /// The version of Node to run. Possible values are `12-lts`, `14-lts`, `16-lts`, `18-lts`, `20-lts`, `22-lts` and `24-lts`. This property conflicts with `java_version`.
  ///
  /// > **Note:** 10.x versions have been/are being deprecated so may cease to work for new resources in the future and may be removed from the provider.
  final pulumi.Input<String>? nodeVersion;
  /// The version of PHP to run. Possible values are `7.4`, `8.0`, `8.1`, `8.2`, `8.3` and `8.4`.
  ///
  /// > **Note:** version `7.4` is deprecated and will be removed from the provider in a future version.
  final pulumi.Input<String>? phpVersion;
  /// The version of Python to run. Possible values include `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
  final pulumi.Input<String>? pythonVersion;
  /// The version of Ruby to run. Possible values include `2.6` and `2.7`.
  final pulumi.Input<String>? rubyVersion;

  /// Creates a new [LinuxWebAppSlotSiteConfigApplicationStack].
  /// [dockerImageName] The docker image, including tag, to be used. e.g. `appsvc/staticsite:latest`.
  /// [dockerRegistryPassword] The User Name to use for authentication against the registry to pull the image.
  /// [dockerRegistryUrl] The URL of the container registry where the `docker_image_name` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `docker_image_name`.
  /// [dockerRegistryUsername] The User Name to use for authentication against the registry to pull the image.
  /// [dotnetVersion] The version of .NET to use. Possible values include `3.1`, `5.0`, `6.0`, `7.0`, `8.0`, `9.0` and `10.0`.
  /// [goVersion] The version of Go to use. Possible values include `1.18`, and `1.19`.
  /// [javaServer] The Java server type. Possible values include `JAVA`, `TOMCAT`, and `JBOSSEAP`.
  /// [javaServerVersion] The Version of the `java_server` to use.
  /// [javaVersion] The Version of Java to use. Possible values are `8`, `11`, `17` and `21`.
  /// [nodeVersion] The version of Node to run. Possible values are `12-lts`, `14-lts`, `16-lts`, `18-lts`, `20-lts`, `22-lts` and `24-lts`. This property conflicts with `java_version`.
  /// [phpVersion] The version of PHP to run. Possible values are `7.4`, `8.0`, `8.1`, `8.2`, `8.3` and `8.4`.
  /// [pythonVersion] The version of Python to run. Possible values include `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
  /// [rubyVersion] The version of Ruby to run. Possible values include `2.6` and `2.7`.
  LinuxWebAppSlotSiteConfigApplicationStack({
    this.dockerImageName,
    this.dockerRegistryPassword,
    this.dockerRegistryUrl,
    this.dockerRegistryUsername,
    this.dotnetVersion,
    this.goVersion,
    this.javaServer,
    this.javaServerVersion,
    this.javaVersion,
    this.nodeVersion,
    this.phpVersion,
    this.pythonVersion,
    this.rubyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImageName': ?dockerImageName,
      'dockerRegistryPassword': ?dockerRegistryPassword,
      'dockerRegistryUrl': ?dockerRegistryUrl,
      'dockerRegistryUsername': ?dockerRegistryUsername,
      'dotnetVersion': ?dotnetVersion,
      'goVersion': ?goVersion,
      'javaServer': ?javaServer,
      'javaServerVersion': ?javaServerVersion,
      'javaVersion': ?javaVersion,
      'nodeVersion': ?nodeVersion,
      'phpVersion': ?phpVersion,
      'pythonVersion': ?pythonVersion,
      'rubyVersion': ?rubyVersion,
    };
  }

  factory LinuxWebAppSlotSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigApplicationStack(
      dockerImageName: map['dockerImageName'] == null ? null : (map['dockerImageName'] as String).input(),
      dockerRegistryPassword: map['dockerRegistryPassword'] == null ? null : (map['dockerRegistryPassword'] as String).input(),
      dockerRegistryUrl: map['dockerRegistryUrl'] == null ? null : (map['dockerRegistryUrl'] as String).input(),
      dockerRegistryUsername: map['dockerRegistryUsername'] == null ? null : (map['dockerRegistryUsername'] as String).input(),
      dotnetVersion: map['dotnetVersion'] == null ? null : (map['dotnetVersion'] as String).input(),
      goVersion: map['goVersion'] == null ? null : (map['goVersion'] as String).input(),
      javaServer: map['javaServer'] == null ? null : (map['javaServer'] as String).input(),
      javaServerVersion: map['javaServerVersion'] == null ? null : (map['javaServerVersion'] as String).input(),
      javaVersion: map['javaVersion'] == null ? null : (map['javaVersion'] as String).input(),
      nodeVersion: map['nodeVersion'] == null ? null : (map['nodeVersion'] as String).input(),
      phpVersion: map['phpVersion'] == null ? null : (map['phpVersion'] as String).input(),
      pythonVersion: map['pythonVersion'] == null ? null : (map['pythonVersion'] as String).input(),
      rubyVersion: map['rubyVersion'] == null ? null : (map['rubyVersion'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigApplicationStack {
  /// The Application Stack for the Windows Web App. Possible values include `dotnet`, `dotnetcore`, `node`, `python`, `php`, and `java`.
  ///
  /// &gt; **Note:** Whilst this property is Optional omitting it can cause unexpected behaviour, in particular for display of settings in the Azure Portal.
  final pulumi.Input<String?>? currentStack;
  /// The docker image, including tag, to be used. e.g. `azure-app-service/windows/parkingpage:latest`.
  final pulumi.Input<String?>? dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  ///
  /// &gt; **Note:** `dockerRegistryUrl`, `dockerRegistryUsername`, and `dockerRegistryPassword` replace the use of the `appSettings` values of `DOCKER_REGISTRY_SERVER_URL`, `DOCKER_REGISTRY_SERVER_USERNAME` and `DOCKER_REGISTRY_SERVER_PASSWORD` respectively, these values will be managed by the provider and should not be specified in the `appSettings` map.
  final pulumi.Input<String?>? dockerRegistryPassword;
  /// The URL of the container registry where the `dockerImageName` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `dockerImageName`.
  final pulumi.Input<String?>? dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final pulumi.Input<String?>? dockerRegistryUsername;
  /// The version of .NET to use when `currentStack` is set to `dotnetcore`. Possible values include `v4.0`.
  final pulumi.Input<String?>? dotnetCoreVersion;
  /// The version of .NET to use when `currentStack` is set to `dotnet`. Possible values include `v2.0`,`v3.0`, `v4.0`, `v5.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`.
  final pulumi.Input<String?>? dotnetVersion;
  final pulumi.Input<String?>? javaContainer;
  final pulumi.Input<String?>? javaContainerVersion;
  /// Should the Java Embedded Server (Java SE) be used to run the app.
  final pulumi.Input<bool?>? javaEmbeddedServerEnabled;
  /// The version of Java to use when `currentStack` is set to `java`. Possible values include `1.7`, `1.8`, `11` and `17`. Required with `javaContainer` and `javaContainerVersion`.
  ///
  /// &gt; **Note:** For compatible combinations of `javaVersion`, `javaContainer` and `javaContainerVersion` users can use `az webapp list-runtimes` from command line.
  final pulumi.Input<String?>? javaVersion;
  /// The version of node to use when `currentStack` is set to `node`. Possible values include `~12`, `~14`, `~16`, `~18`, `~20` and `~22`.
  ///
  /// &gt; **Note:** This property conflicts with `javaVersion`.
  final pulumi.Input<String?>? nodeVersion;
  /// The version of PHP to use when `currentStack` is set to `php`. Possible values are `7.1`, `7.4` and `Off`.
  ///
  /// &gt; **Note:** The value `Off` is used to signify latest supported by the service.
  final pulumi.Input<String?>? phpVersion;
  /// The app is a Python app. Defaults to `false`.
  final pulumi.Input<bool?>? python;
  /// The version of Tomcat the Java App should use.
  ///
  /// &gt; **Note:** See the official documentation for current supported versions.
  final pulumi.Input<String?>? tomcatVersion;

  /// Creates a new [WindowsWebAppSlotSiteConfigApplicationStack].
  /// [currentStack] The Application Stack for the Windows Web App. Possible values include `dotnet`, `dotnetcore`, `node`, `python`, `php`, and `java`.
  /// [dockerImageName] The docker image, including tag, to be used. e.g. `azure-app-service/windows/parkingpage:latest`.
  /// [dockerRegistryPassword] The User Name to use for authentication against the registry to pull the image.
  /// [dockerRegistryUrl] The URL of the container registry where the `dockerImageName` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `dockerImageName`.
  /// [dockerRegistryUsername] The User Name to use for authentication against the registry to pull the image.
  /// [dotnetCoreVersion] The version of .NET to use when `currentStack` is set to `dotnetcore`. Possible values include `v4.0`.
  /// [dotnetVersion] The version of .NET to use when `currentStack` is set to `dotnet`. Possible values include `v2.0`,`v3.0`, `v4.0`, `v5.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`.
  /// [javaContainer] Optional.
  /// [javaContainerVersion] Optional.
  /// [javaEmbeddedServerEnabled] Should the Java Embedded Server (Java SE) be used to run the app.
  /// [javaVersion] The version of Java to use when `currentStack` is set to `java`. Possible values include `1.7`, `1.8`, `11` and `17`. Required with `javaContainer` and `javaContainerVersion`.
  /// [nodeVersion] The version of node to use when `currentStack` is set to `node`. Possible values include `~12`, `~14`, `~16`, `~18`, `~20` and `~22`.
  /// [phpVersion] The version of PHP to use when `currentStack` is set to `php`. Possible values are `7.1`, `7.4` and `Off`.
  /// [python] The app is a Python app. Defaults to `false`.
  /// [tomcatVersion] The version of Tomcat the Java App should use.
  const WindowsWebAppSlotSiteConfigApplicationStack({
    this.currentStack,
    this.dockerImageName,
    this.dockerRegistryPassword,
    this.dockerRegistryUrl,
    this.dockerRegistryUsername,
    this.dotnetCoreVersion,
    this.dotnetVersion,
    this.javaContainer,
    this.javaContainerVersion,
    this.javaEmbeddedServerEnabled,
    this.javaVersion,
    this.nodeVersion,
    this.phpVersion,
    this.python,
    this.tomcatVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentStack': ?currentStack,
      'dockerImageName': ?dockerImageName,
      'dockerRegistryPassword': ?dockerRegistryPassword,
      'dockerRegistryUrl': ?dockerRegistryUrl,
      'dockerRegistryUsername': ?dockerRegistryUsername,
      'dotnetCoreVersion': ?dotnetCoreVersion,
      'dotnetVersion': ?dotnetVersion,
      'javaContainer': ?javaContainer,
      'javaContainerVersion': ?javaContainerVersion,
      'javaEmbeddedServerEnabled': ?javaEmbeddedServerEnabled,
      'javaVersion': ?javaVersion,
      'nodeVersion': ?nodeVersion,
      'phpVersion': ?phpVersion,
      'python': ?python,
      'tomcatVersion': ?tomcatVersion,
    };
  }

  factory WindowsWebAppSlotSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigApplicationStack(
      currentStack: (() { final guardedValue = map['currentStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerImageName: (() { final guardedValue = map['dockerImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerRegistryPassword: (() { final guardedValue = map['dockerRegistryPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerRegistryUrl: (() { final guardedValue = map['dockerRegistryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerRegistryUsername: (() { final guardedValue = map['dockerRegistryUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dotnetCoreVersion: (() { final guardedValue = map['dotnetCoreVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dotnetVersion: (() { final guardedValue = map['dotnetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaContainer: (() { final guardedValue = map['javaContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaContainerVersion: (() { final guardedValue = map['javaContainerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaEmbeddedServerEnabled: (() { final guardedValue = map['javaEmbeddedServerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      javaVersion: (() { final guardedValue = map['javaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phpVersion: (() { final guardedValue = map['phpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      python: (() { final guardedValue = map['python']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tomcatVersion: (() { final guardedValue = map['tomcatVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

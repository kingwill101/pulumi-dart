// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotSiteConfigApplicationStack {
  /// The Application Stack for the Windows Web App. Possible values include `dotnet`, `dotnetcore`, `node`, `python`, `php`, and `java`.
  ///
  /// > **Note:** Whilst this property is Optional omitting it can cause unexpected behaviour, in particular for display of settings in the Azure Portal.
  final String? currentStack;
  /// The docker image, including tag, to be used. e.g. `azure-app-service/windows/parkingpage:latest`.
  final String? dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  ///
  /// > **Note:** `docker_registry_url`, `docker_registry_username`, and `docker_registry_password` replace the use of the `app_settings` values of `DOCKER_REGISTRY_SERVER_URL`, `DOCKER_REGISTRY_SERVER_USERNAME` and `DOCKER_REGISTRY_SERVER_PASSWORD` respectively, these values will be managed by the provider and should not be specified in the `app_settings` map.
  final String? dockerRegistryPassword;
  /// The URL of the container registry where the `docker_image_name` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `docker_image_name`.
  final String? dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final String? dockerRegistryUsername;
  /// The version of .NET to use when `current_stack` is set to `dotnetcore`. Possible values include `v4.0`.
  final String? dotnetCoreVersion;
  /// The version of .NET to use when `current_stack` is set to `dotnet`. Possible values include `v2.0`,`v3.0`, `v4.0`, `v5.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`.
  final String? dotnetVersion;
  final String? javaContainer;
  final String? javaContainerVersion;
  /// Should the Java Embedded Server (Java SE) be used to run the app.
  final bool? javaEmbeddedServerEnabled;
  /// The version of Java to use when `current_stack` is set to `java`. Possible values include `1.7`, `1.8`, `11` and `17`. Required with `java_container` and `java_container_version`.
  ///
  /// > **Note:** For compatible combinations of `java_version`, `java_container` and `java_container_version` users can use `az webapp list-runtimes` from command line.
  final String? javaVersion;
  /// The version of node to use when `current_stack` is set to `node`. Possible values include `~12`, `~14`, `~16`, `~18`, `~20` and `~22`.
  ///
  /// > **Note:** This property conflicts with `java_version`.
  final String? nodeVersion;
  /// The version of PHP to use when `current_stack` is set to `php`. Possible values are `7.1`, `7.4` and `Off`.
  ///
  /// > **Note:** The value `Off` is used to signify latest supported by the service.
  final String? phpVersion;
  /// The app is a Python app. Defaults to `false`.
  final bool? python;
  /// The version of Tomcat the Java App should use.
  ///
  /// > **Note:** See the official documentation for current supported versions.
  final String? tomcatVersion;

  /// Creates a new [WindowsWebAppSlotSiteConfigApplicationStack].
  /// [currentStack] The Application Stack for the Windows Web App. Possible values include `dotnet`, `dotnetcore`, `node`, `python`, `php`, and `java`.
  /// [dockerImageName] The docker image, including tag, to be used. e.g. `azure-app-service/windows/parkingpage:latest`.
  /// [dockerRegistryPassword] The User Name to use for authentication against the registry to pull the image.
  /// [dockerRegistryUrl] The URL of the container registry where the `docker_image_name` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `docker_image_name`.
  /// [dockerRegistryUsername] The User Name to use for authentication against the registry to pull the image.
  /// [dotnetCoreVersion] The version of .NET to use when `current_stack` is set to `dotnetcore`. Possible values include `v4.0`.
  /// [dotnetVersion] The version of .NET to use when `current_stack` is set to `dotnet`. Possible values include `v2.0`,`v3.0`, `v4.0`, `v5.0`, `v6.0`, `v7.0`, `v8.0`, `v9.0` and `v10.0`.
  /// [javaContainer] Optional.
  /// [javaContainerVersion] Optional.
  /// [javaEmbeddedServerEnabled] Should the Java Embedded Server (Java SE) be used to run the app.
  /// [javaVersion] The version of Java to use when `current_stack` is set to `java`. Possible values include `1.7`, `1.8`, `11` and `17`. Required with `java_container` and `java_container_version`.
  /// [nodeVersion] The version of node to use when `current_stack` is set to `node`. Possible values include `~12`, `~14`, `~16`, `~18`, `~20` and `~22`.
  /// [phpVersion] The version of PHP to use when `current_stack` is set to `php`. Possible values are `7.1`, `7.4` and `Off`.
  /// [python] The app is a Python app. Defaults to `false`.
  /// [tomcatVersion] The version of Tomcat the Java App should use.
  WindowsWebAppSlotSiteConfigApplicationStack({
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
      currentStack: map['currentStack'] == null ? null : map['currentStack'] as String,
      dockerImageName: map['dockerImageName'] == null ? null : map['dockerImageName'] as String,
      dockerRegistryPassword: map['dockerRegistryPassword'] == null ? null : map['dockerRegistryPassword'] as String,
      dockerRegistryUrl: map['dockerRegistryUrl'] == null ? null : map['dockerRegistryUrl'] as String,
      dockerRegistryUsername: map['dockerRegistryUsername'] == null ? null : map['dockerRegistryUsername'] as String,
      dotnetCoreVersion: map['dotnetCoreVersion'] == null ? null : map['dotnetCoreVersion'] as String,
      dotnetVersion: map['dotnetVersion'] == null ? null : map['dotnetVersion'] as String,
      javaContainer: map['javaContainer'] == null ? null : map['javaContainer'] as String,
      javaContainerVersion: map['javaContainerVersion'] == null ? null : map['javaContainerVersion'] as String,
      javaEmbeddedServerEnabled: map['javaEmbeddedServerEnabled'] == null ? null : map['javaEmbeddedServerEnabled'] as bool,
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] == null ? null : map['nodeVersion'] as String,
      phpVersion: map['phpVersion'] == null ? null : map['phpVersion'] as String,
      python: map['python'] == null ? null : map['python'] as bool,
      tomcatVersion: map['tomcatVersion'] == null ? null : map['tomcatVersion'] as String,
    );
  }
}


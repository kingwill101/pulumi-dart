// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigApplicationStack {
  /// The Current Stack value of the Windows Web App.
  final String currentStack;
  /// The docker image, including tag, used by this Windows Web App.
  final String dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  final String dockerRegistryPassword;
  /// The URL of the container registry where the `docker_image_name` is located.
  final String dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final String dockerRegistryUsername;
  final String dotnetCoreVersion;
  /// The version of .NET in use.
  final String dotnetVersion;
  /// The Java Container in use.
  final String javaContainer;
  /// The Version of the Java Container in use.
  final String javaContainerVersion;
  final bool javaEmbeddedServerEnabled;
  /// The Version of Java in use.
  final String javaVersion;
  /// The Version of Node in use.
  final String nodeVersion;
  /// The Version of the PHP in use.
  final String phpVersion;
  final bool python;
  /// The Version of Python in use.
  final String pythonVersion;
  final String tomcatVersion;

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
      currentStack: map['currentStack'] as String,
      dockerImageName: map['dockerImageName'] as String,
      dockerRegistryPassword: map['dockerRegistryPassword'] as String,
      dockerRegistryUrl: map['dockerRegistryUrl'] as String,
      dockerRegistryUsername: map['dockerRegistryUsername'] as String,
      dotnetCoreVersion: map['dotnetCoreVersion'] as String,
      dotnetVersion: map['dotnetVersion'] as String,
      javaContainer: map['javaContainer'] as String,
      javaContainerVersion: map['javaContainerVersion'] as String,
      javaEmbeddedServerEnabled: map['javaEmbeddedServerEnabled'] as bool,
      javaVersion: map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] as String,
      phpVersion: map['phpVersion'] as String,
      python: map['python'] as bool,
      pythonVersion: map['pythonVersion'] as String,
      tomcatVersion: map['tomcatVersion'] as String,
    );
  }
}


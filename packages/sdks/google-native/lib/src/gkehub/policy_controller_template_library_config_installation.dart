/// Configures the manner in which the template library is installed on the cluster.
enum PolicyControllerTemplateLibraryConfigInstallation {
  installationUnspecified("INSTALLATION_UNSPECIFIED"),
  notInstalled("NOT_INSTALLED"),
  all("ALL");

  const PolicyControllerTemplateLibraryConfigInstallation(this.wireValue);
  final String wireValue;

  static PolicyControllerTemplateLibraryConfigInstallation fromValue(String value) {
    for (final item in PolicyControllerTemplateLibraryConfigInstallation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerTemplateLibraryConfigInstallation value: $value');
  }
}


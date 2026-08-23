/// Configures the manner in which the template library is installed on the cluster.
enum PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta {
  installationUnspecified("INSTALLATION_UNSPECIFIED"),
  notInstalled("NOT_INSTALLED"),
  all("ALL");

  const PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta(this.wireValue);
  final String wireValue;

  static PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta fromValue(String value) {
    for (final item in PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta value: $value');
  }
}

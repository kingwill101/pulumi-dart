/// Configures the manner in which the template library is installed on the cluster.
enum PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta {
  installationUnspecified("INSTALLATION_UNSPECIFIED"),
  notInstalled("NOT_INSTALLED"),
  all("ALL");

  const PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta(this.value);
  final String value;

  static PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta fromValue(String value) {
    for (final item in PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta value: $value');
  }
}


/// Configures the manner in which the template library is installed on the cluster.
enum PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha {
  installationUnspecified("INSTALLATION_UNSPECIFIED"),
  notInstalled("NOT_INSTALLED"),
  all("ALL");

  const PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha(
    this.wireValue,
  );
  final String wireValue;

  static PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha
  fromValue(String value) {
    for (final item
        in PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha value: $value',
    );
  }
}

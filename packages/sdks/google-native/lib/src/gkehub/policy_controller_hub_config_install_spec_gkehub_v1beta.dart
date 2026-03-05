/// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
enum PolicyControllerHubConfigInstallSpecGkehubV1beta {
  installSpecUnspecified("INSTALL_SPEC_UNSPECIFIED"),
  installSpecNotInstalled("INSTALL_SPEC_NOT_INSTALLED"),
  installSpecEnabled("INSTALL_SPEC_ENABLED"),
  installSpecSuspended("INSTALL_SPEC_SUSPENDED"),
  installSpecDetached("INSTALL_SPEC_DETACHED");

  const PolicyControllerHubConfigInstallSpecGkehubV1beta(this.wireValue);
  final String wireValue;

  static PolicyControllerHubConfigInstallSpecGkehubV1beta fromValue(String value) {
    for (final item in PolicyControllerHubConfigInstallSpecGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerHubConfigInstallSpecGkehubV1beta value: $value');
  }
}


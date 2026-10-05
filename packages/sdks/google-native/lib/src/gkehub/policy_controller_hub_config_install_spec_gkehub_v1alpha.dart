import 'package:pulumi/pulumi.dart' as pulumi;

/// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
enum PolicyControllerHubConfigInstallSpecGkehubV1alpha implements pulumi.PulumiEnum<String> {
  installSpecUnspecified("INSTALL_SPEC_UNSPECIFIED"),
  installSpecNotInstalled("INSTALL_SPEC_NOT_INSTALLED"),
  installSpecEnabled("INSTALL_SPEC_ENABLED"),
  installSpecSuspended("INSTALL_SPEC_SUSPENDED"),
  installSpecDetached("INSTALL_SPEC_DETACHED");

  const PolicyControllerHubConfigInstallSpecGkehubV1alpha(this.wireValue);
  @override
  final String wireValue;

  static PolicyControllerHubConfigInstallSpecGkehubV1alpha fromValue(String value) {
    for (final item in PolicyControllerHubConfigInstallSpecGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyControllerHubConfigInstallSpecGkehubV1alpha value: $value');
  }
}

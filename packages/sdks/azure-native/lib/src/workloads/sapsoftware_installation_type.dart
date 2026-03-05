/// The SAP software installation type.
enum SAPSoftwareInstallationType {
  serviceInitiated("ServiceInitiated"),
  sAPInstallWithoutOSConfig("SAPInstallWithoutOSConfig"),
  external("External");

  const SAPSoftwareInstallationType(this.wireValue);
  final String wireValue;

  static SAPSoftwareInstallationType fromValue(String value) {
    for (final item in SAPSoftwareInstallationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPSoftwareInstallationType value: $value');
  }
}


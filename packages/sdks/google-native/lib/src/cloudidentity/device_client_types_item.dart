enum DeviceClientTypesItem {
  clientTypeUnspecified("CLIENT_TYPE_UNSPECIFIED"),
  driveFs("DRIVE_FS"),
  fundamental("FUNDAMENTAL"),
  endpointVerification("ENDPOINT_VERIFICATION"),
  windowsAdvanced("WINDOWS_ADVANCED"),
  googleCredentialsProviderForWindows("GOOGLE_CREDENTIALS_PROVIDER_FOR_WINDOWS");

  const DeviceClientTypesItem(this.wireValue);
  final String wireValue;

  static DeviceClientTypesItem fromValue(String value) {
    for (final item in DeviceClientTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceClientTypesItem value: $value');
  }
}


enum NetworkAttachmentConnectionPreference {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreference(this.wireValue);
  final String wireValue;

  static NetworkAttachmentConnectionPreference fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAttachmentConnectionPreference value: $value');
  }
}

enum NetworkAttachmentConnectionPreferenceComputeV1 {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreferenceComputeV1(this.wireValue);
  final String wireValue;

  static NetworkAttachmentConnectionPreferenceComputeV1 fromValue(
    String value,
  ) {
    for (final item in NetworkAttachmentConnectionPreferenceComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkAttachmentConnectionPreferenceComputeV1 value: $value',
    );
  }
}

/// The result state of the ScanRun. This field is only available after the execution state reaches "FINISHED".
enum ScanRunResultStateWebsecurityscannerV1beta {
  resultStateUnspecified("RESULT_STATE_UNSPECIFIED"),
  success("SUCCESS"),
  error("ERROR"),
  killed("KILLED");

  const ScanRunResultStateWebsecurityscannerV1beta(this.wireValue);
  final String wireValue;

  static ScanRunResultStateWebsecurityscannerV1beta fromValue(String value) {
    for (final item in ScanRunResultStateWebsecurityscannerV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunResultStateWebsecurityscannerV1beta value: $value');
  }
}

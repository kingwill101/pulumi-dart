/// The status of discovery for the resource.
enum DiscoveredAnalysisStatus {
  analysisStatusUnspecified("ANALYSIS_STATUS_UNSPECIFIED"),
  pending("PENDING"),
  scanning("SCANNING"),
  complete("COMPLETE"),
  finishedSuccess("FINISHED_SUCCESS"),
  finishedFailed("FINISHED_FAILED"),
  finishedUnsupported("FINISHED_UNSUPPORTED");

  const DiscoveredAnalysisStatus(this.wireValue);
  final String wireValue;

  static DiscoveredAnalysisStatus fromValue(String value) {
    for (final item in DiscoveredAnalysisStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredAnalysisStatus value: $value');
  }
}

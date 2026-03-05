/// The status of discovery for the resource.
enum DiscoveryOccurrenceAnalysisStatus {
  analysisStatusUnspecified("ANALYSIS_STATUS_UNSPECIFIED"),
  pending("PENDING"),
  scanning("SCANNING"),
  finishedSuccess("FINISHED_SUCCESS"),
  complete("COMPLETE"),
  finishedFailed("FINISHED_FAILED"),
  finishedUnsupported("FINISHED_UNSUPPORTED");

  const DiscoveryOccurrenceAnalysisStatus(this.wireValue);
  final String wireValue;

  static DiscoveryOccurrenceAnalysisStatus fromValue(String value) {
    for (final item in DiscoveryOccurrenceAnalysisStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryOccurrenceAnalysisStatus value: $value');
  }
}


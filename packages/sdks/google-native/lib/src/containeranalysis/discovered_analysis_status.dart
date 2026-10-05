import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of discovery for the resource.
enum DiscoveredAnalysisStatus implements pulumi.PulumiEnum<String> {
  analysisStatusUnspecified("ANALYSIS_STATUS_UNSPECIFIED"),
  pending("PENDING"),
  scanning("SCANNING"),
  complete("COMPLETE"),
  finishedSuccess("FINISHED_SUCCESS"),
  finishedFailed("FINISHED_FAILED"),
  finishedUnsupported("FINISHED_UNSUPPORTED");

  const DiscoveredAnalysisStatus(this.wireValue);
  @override
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

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of discovery for the resource.
enum DiscoveredAnalysisStatusContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  analysisStatusUnspecified("ANALYSIS_STATUS_UNSPECIFIED"),
  pending("PENDING"),
  scanning("SCANNING"),
  finishedSuccess("FINISHED_SUCCESS"),
  complete("COMPLETE"),
  finishedFailed("FINISHED_FAILED"),
  finishedUnsupported("FINISHED_UNSUPPORTED");

  const DiscoveredAnalysisStatusContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static DiscoveredAnalysisStatusContaineranalysisV1beta1 fromValue(String value) {
    for (final item in DiscoveredAnalysisStatusContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredAnalysisStatusContaineranalysisV1beta1 value: $value');
  }
}

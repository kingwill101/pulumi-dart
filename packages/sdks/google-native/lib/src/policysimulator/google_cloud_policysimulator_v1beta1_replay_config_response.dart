// ignore_for_file: unused_element, unnecessary_cast


/// The configuration used for a Replay.
class GoogleCloudPolicysimulatorV1beta1ReplayConfigResponse {
  /// The logs to use as input for the Replay.
  final String logSource;
  /// A mapping of the resources that you want to simulate policies for and the policies that you want to simulate. Keys are the full resource names for the resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-project`. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values are Policy objects representing the policies that you want to simulate. Replays automatically take into account any IAM policies inherited through the resource hierarchy, and any policies set on descendant resources. You do not need to include these policies in the policy overlay.
  final Map<String, String> policyOverlay;

  /// Creates a new [GoogleCloudPolicysimulatorV1beta1ReplayConfigResponse].
  /// [logSource] The logs to use as input for the Replay.
  /// [policyOverlay] A mapping of the resources that you want to simulate policies for and the policies that you want to simulate. Keys are the full resource names for the resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-project`. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values are Policy objects representing the policies that you want to simulate. Replays automatically take into account any IAM policies inherited through the resource hierarchy, and any policies set on descendant resources. You do not need to include these policies in the policy overlay.
  GoogleCloudPolicysimulatorV1beta1ReplayConfigResponse({
    required this.logSource,
    required this.policyOverlay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logSource': logSource,
      'policyOverlay': policyOverlay,
    };
  }

  factory GoogleCloudPolicysimulatorV1beta1ReplayConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudPolicysimulatorV1beta1ReplayConfigResponse(
      logSource: map['logSource'] as String,
      policyOverlay: (map['policyOverlay'] as Map).cast<String, String>(),
    );
  }
}


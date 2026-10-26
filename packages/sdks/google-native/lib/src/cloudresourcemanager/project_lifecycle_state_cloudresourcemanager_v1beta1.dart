import 'package:pulumi/pulumi.dart' as pulumi;

/// The Project lifecycle state. Read-only.
enum ProjectLifecycleStateCloudresourcemanagerV1beta1 implements pulumi.PulumiEnum<String> {
  lifecycleStateUnspecified("LIFECYCLE_STATE_UNSPECIFIED"),
  active("ACTIVE"),
  deleteRequested("DELETE_REQUESTED"),
  deleteInProgress("DELETE_IN_PROGRESS");

  const ProjectLifecycleStateCloudresourcemanagerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ProjectLifecycleStateCloudresourcemanagerV1beta1 fromValue(String value) {
    for (final item in ProjectLifecycleStateCloudresourcemanagerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectLifecycleStateCloudresourcemanagerV1beta1 value: $value');
  }
}

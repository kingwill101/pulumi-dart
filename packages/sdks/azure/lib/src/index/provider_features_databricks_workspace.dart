// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesDatabricksWorkspace {
  /// When enabled, the managed resource group that contains the Unity Catalog data will be forcibly deleted when the workspace is destroyed, regardless of contents.
  final bool? forceDelete;

  /// Creates a new [ProviderFeaturesDatabricksWorkspace].
  /// [forceDelete] When enabled, the managed resource group that contains the Unity Catalog data will be forcibly deleted when the workspace is destroyed, regardless of contents.
  ProviderFeaturesDatabricksWorkspace({
    this.forceDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDelete': ?forceDelete,
    };
  }

  factory ProviderFeaturesDatabricksWorkspace.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesDatabricksWorkspace(
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
    );
  }
}


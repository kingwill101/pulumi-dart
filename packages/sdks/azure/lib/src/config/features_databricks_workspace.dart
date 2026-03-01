// ignore_for_file: unused_element, unnecessary_cast


class FeaturesDatabricksWorkspace {
  /// When enabled, the managed resource group that contains the Unity Catalog data will be forcibly deleted when the workspace is destroyed, regardless of contents.
  final bool? forceDelete;

  /// Creates a new [FeaturesDatabricksWorkspace].
  /// [forceDelete] When enabled, the managed resource group that contains the Unity Catalog data will be forcibly deleted when the workspace is destroyed, regardless of contents.
  FeaturesDatabricksWorkspace({
    this.forceDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDelete': ?forceDelete,
    };
  }

  factory FeaturesDatabricksWorkspace.fromMap(Map<String, dynamic> map) {
    return FeaturesDatabricksWorkspace(
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
    );
  }
}


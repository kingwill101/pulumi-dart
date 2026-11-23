// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CdnEdgeExtensionTarget {
  /// A list of references to the resources that are targeted by CdnEdgeExtension.
  /// Types of resources supported: EdgeCacheService.
  /// The format can be `projects/{project}/locations/{location}/edgeCacheServices/{edgeCacheService}` or
  /// `//networkservices.googleapis.com/projects/{project}/locations/{location}/edgeCacheServices/{edgeCacheService}`.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [CdnEdgeExtensionTarget].
  /// [resources] A list of references to the resources that are targeted by CdnEdgeExtension.
  const CdnEdgeExtensionTarget({
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': resources,
    };
  }

  factory CdnEdgeExtensionTarget.fromMap(Map<String, dynamic> map) {
    return CdnEdgeExtensionTarget(
      resources: pulumi.Input.fromValue((map['resources'] as List).cast<String>()),
    );
  }
}

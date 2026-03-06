// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDiagnosticCategories.
class GetDiagnosticCategoriesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of the supported log category groups of this resource to send to the destination.
  final List<String> logCategoryGroups;
  /// A list of the supported log category types of this resource to send to the destination.
  final List<String> logCategoryTypes;
  /// A list of the Metric Categories supported for this Resource.
  final List<String> metrics;
  final String resourceId;

  /// Creates a new [GetDiagnosticCategoriesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logCategoryGroups] A list of the supported log category groups of this resource to send to the destination.
  /// [logCategoryTypes] A list of the supported log category types of this resource to send to the destination.
  /// [metrics] A list of the Metric Categories supported for this Resource.
  /// [resourceId] Required.
  const GetDiagnosticCategoriesResult({
    required this.id,
    required this.logCategoryGroups,
    required this.logCategoryTypes,
    required this.metrics,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'logCategoryGroups': logCategoryGroups,
      'logCategoryTypes': logCategoryTypes,
      'metrics': metrics,
      'resourceId': resourceId,
    };
  }

  factory GetDiagnosticCategoriesResult.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticCategoriesResult(
      id: map['id'] as String,
      logCategoryGroups: (map['logCategoryGroups'] as List).cast<String>(),
      logCategoryTypes: (map['logCategoryTypes'] as List).cast<String>(),
      metrics: (map['metrics'] as List).cast<String>(),
      resourceId: map['resourceId'] as String,
    );
  }
}


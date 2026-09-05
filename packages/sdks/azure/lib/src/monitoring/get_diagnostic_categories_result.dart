// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDiagnosticCategories.
class GetDiagnosticCategoriesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of the supported log category groups of this resource to send to the destination.
  final List<String>? logCategoryGroups;
  /// A list of the supported log category types of this resource to send to the destination.
  final List<String>? logCategoryTypes;
  /// A list of the Metric Categories supported for this Resource.
  final List<String>? metrics;
  final String? resourceId;

  /// Creates a new [GetDiagnosticCategoriesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logCategoryGroups] A list of the supported log category groups of this resource to send to the destination.
  /// [logCategoryTypes] A list of the supported log category types of this resource to send to the destination.
  /// [metrics] A list of the Metric Categories supported for this Resource.
  /// [resourceId] Optional.
  const GetDiagnosticCategoriesResult({
    this.id,
    this.logCategoryGroups,
    this.logCategoryTypes,
    this.metrics,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'logCategoryGroups': ?logCategoryGroups,
      'logCategoryTypes': ?logCategoryTypes,
      'metrics': ?metrics,
      'resourceId': ?resourceId,
    };
  }

  factory GetDiagnosticCategoriesResult.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticCategoriesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logCategoryGroups: (() { final guardedValue = map['logCategoryGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      logCategoryTypes: (() { final guardedValue = map['logCategoryTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

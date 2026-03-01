// ignore_for_file: unused_element, unnecessary_cast


/// Severity level per category configuration for PR Annotations.
class CategoryConfigurationResponse {
  /// Rule categories.
  /// Code - code scanning results.
  /// Artifact scanning results.
  /// Dependencies scanning results.
  /// IaC results.
  /// Secrets scanning results.
  /// Container scanning results.
  final String? category;
  /// Gets or sets minimum severity level for a given category.
  final String? minimumSeverityLevel;

  /// Creates a new [CategoryConfigurationResponse].
  /// [category] Rule categories.
  /// [minimumSeverityLevel] Gets or sets minimum severity level for a given category.
  CategoryConfigurationResponse({
    this.category,
    this.minimumSeverityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'minimumSeverityLevel': ?minimumSeverityLevel,
    };
  }

  factory CategoryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CategoryConfigurationResponse(
      category: map['category'] == null ? null : map['category'] as String,
      minimumSeverityLevel: map['minimumSeverityLevel'] == null ? null : map['minimumSeverityLevel'] as String,
    );
  }
}


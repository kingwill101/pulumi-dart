// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Severity level per category configuration for PR Annotations.
class CategoryConfigurationResponse {
  /// Rule categories.
  /// Code - code scanning results.
  /// Artifact scanning results.
  /// Dependencies scanning results.
  /// IaC results.
  /// Secrets scanning results.
  /// Container scanning results.
  final pulumi.Input<String>? category;
  /// Gets or sets minimum severity level for a given category.
  final pulumi.Input<String>? minimumSeverityLevel;

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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      minimumSeverityLevel: map['minimumSeverityLevel'] == null ? null : (map['minimumSeverityLevel']! as String).input(),
    );
  }
}


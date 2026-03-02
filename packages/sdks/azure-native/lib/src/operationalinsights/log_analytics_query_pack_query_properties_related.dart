// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The related metadata items for the function.
class LogAnalyticsQueryPackQueryPropertiesRelated {
  /// The related categories for the function.
  final pulumi.Input<List<String>>? categories;
  /// The related resource types for the function.
  final pulumi.Input<List<String>>? resourceTypes;
  /// The related Log Analytics solutions for the function.
  final pulumi.Input<List<String>>? solutions;

  /// Creates a new [LogAnalyticsQueryPackQueryPropertiesRelated].
  /// [categories] The related categories for the function.
  /// [resourceTypes] The related resource types for the function.
  /// [solutions] The related Log Analytics solutions for the function.
  LogAnalyticsQueryPackQueryPropertiesRelated({
    this.categories,
    this.resourceTypes,
    this.solutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'resourceTypes': ?resourceTypes,
      'solutions': ?solutions,
    };
  }

  factory LogAnalyticsQueryPackQueryPropertiesRelated.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsQueryPackQueryPropertiesRelated(
      categories: map['categories'] == null ? null : ((map['categories']! as List).cast<String>()).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes']! as List).cast<String>()).input(),
      solutions: map['solutions'] == null ? null : ((map['solutions']! as List).cast<String>()).input(),
    );
  }
}


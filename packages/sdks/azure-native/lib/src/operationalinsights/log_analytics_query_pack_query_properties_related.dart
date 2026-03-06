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
  const LogAnalyticsQueryPackQueryPropertiesRelated({
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
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      solutions: (() { final guardedValue = map['solutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


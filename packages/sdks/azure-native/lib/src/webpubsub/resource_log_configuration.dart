// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_log_category.dart';

/// Resource log configuration of a Microsoft.SignalRService resource.
class ResourceLogConfiguration {
  /// Gets or sets the list of category configurations.
  final pulumi.Input<List<ResourceLogCategory>>? categories;

  /// Creates a new [ResourceLogConfiguration].
  /// [categories] Gets or sets the list of category configurations.
  ResourceLogConfiguration({
    this.categories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?pulumi.Input.mapOptionalInputValue<List<ResourceLogCategory>, List<Map<String, dynamic>>>(categories, (value) => pulumi.Input.encodeList<ResourceLogCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceLogConfiguration(
      categories: map['categories'] == null ? null : (pulumi.Input.decodeList<ResourceLogCategory>(map['categories']!, (value) => ResourceLogCategory.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


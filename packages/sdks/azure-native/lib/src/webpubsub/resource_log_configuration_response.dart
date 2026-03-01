// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_log_category_response.dart';

/// Resource log configuration of a Microsoft.SignalRService resource.
class ResourceLogConfigurationResponse {
  /// Gets or sets the list of category configurations.
  final List<ResourceLogCategoryResponse>? categories;

  /// Creates a new [ResourceLogConfigurationResponse].
  /// [categories] Gets or sets the list of category configurations.
  ResourceLogConfigurationResponse({
    this.categories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories == null ? null : pulumi.Input.encodeList<ResourceLogCategoryResponse, Map<String, dynamic>>(categories!, (value) => value.toMap()),
    };
  }

  factory ResourceLogConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLogConfigurationResponse(
      categories: map['categories'] == null ? null : pulumi.Input.decodeList<ResourceLogCategoryResponse>(map['categories'], (value) => ResourceLogCategoryResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


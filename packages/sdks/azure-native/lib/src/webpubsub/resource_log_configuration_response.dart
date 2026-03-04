// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_log_category_response.dart';

/// Resource log configuration of a Microsoft.SignalRService resource.
class ResourceLogConfigurationResponse {
  /// Gets or sets the list of category configurations.
  final pulumi.Input<List<ResourceLogCategoryResponse>>? categories;

  /// Creates a new [ResourceLogConfigurationResponse].
  /// [categories] Gets or sets the list of category configurations.
  ResourceLogConfigurationResponse({this.categories});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceLogCategoryResponse>,
            List<Map<String, dynamic>>
          >(
            categories,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceLogCategoryResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourceLogConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLogConfigurationResponse(
      categories: (() {
        final guardedValue = map['categories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceLogCategoryResponse>(
            guardedValue,
            (value) => ResourceLogCategoryResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}

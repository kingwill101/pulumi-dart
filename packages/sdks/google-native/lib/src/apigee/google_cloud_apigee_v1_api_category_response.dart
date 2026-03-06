// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `ApiCategory` represents an API category. [Catalog items](/apigee/docs/reference/apis/apigee/rest/v1/organizations.sites.apidocs) can be tagged with API categories; users viewing the API catalog in the portal will have the option to browse the catalog by category.
class GoogleCloudApigeeV1ApiCategoryResponse {
  /// Name of the category.
  final pulumi.Input<String> name;
  /// Name of the portal.
  final pulumi.Input<String> siteId;
  /// Time the category was last modified in milliseconds since epoch.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudApigeeV1ApiCategoryResponse].
  /// [name] Name of the category.
  /// [siteId] Name of the portal.
  /// [updateTime] Time the category was last modified in milliseconds since epoch.
  const GoogleCloudApigeeV1ApiCategoryResponse({
    required this.name,
    required this.siteId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'siteId': siteId,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudApigeeV1ApiCategoryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ApiCategoryResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}


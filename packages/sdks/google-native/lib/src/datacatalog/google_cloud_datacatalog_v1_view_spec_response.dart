// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table view specification.
class GoogleCloudDatacatalogV1ViewSpecResponse {
  /// The query that defines the table view.
  final pulumi.Input<String> viewQuery;

  /// Creates a new [GoogleCloudDatacatalogV1ViewSpecResponse].
  /// [viewQuery] The query that defines the table view.
  const GoogleCloudDatacatalogV1ViewSpecResponse({
    required this.viewQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'viewQuery': viewQuery,
    };
  }

  factory GoogleCloudDatacatalogV1ViewSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ViewSpecResponse(
      viewQuery: pulumi.Input.fromValue(map['viewQuery'] as String),
    );
  }
}


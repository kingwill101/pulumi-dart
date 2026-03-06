// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusteringResponse {
  /// [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
  final pulumi.Input<List<String>> fields;

  /// Creates a new [ClusteringResponse].
  /// [fields] [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
  const ClusteringResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': fields,
    };
  }

  factory ClusteringResponse.fromMap(Map<String, dynamic> map) {
    return ClusteringResponse(
      fields: pulumi.Input.fromValue((map['fields'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Clustering {
  /// [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
  final pulumi.Input<List<String>>? fields;

  /// Creates a new [Clustering].
  /// [fields] [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
  Clustering({
    this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
    };
  }

  factory Clustering.fromMap(Map<String, dynamic> map) {
    return Clustering(
      fields: map['fields'] == null ? null : ((map['fields']! as List).cast<String>()).input(),
    );
  }
}


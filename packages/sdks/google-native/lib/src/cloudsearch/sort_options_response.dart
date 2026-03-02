// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SortOptionsResponse {
  /// The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  final pulumi.Input<String> operatorName;
  /// Ascending is the default sort order
  final pulumi.Input<String> sortOrder;

  /// Creates a new [SortOptionsResponse].
  /// [operatorName] The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  /// [sortOrder] Ascending is the default sort order
  SortOptionsResponse({
    required this.operatorName,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatorName': operatorName,
      'sortOrder': sortOrder,
    };
  }

  factory SortOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SortOptionsResponse(
      operatorName: (map['operatorName'] as String).input(),
      sortOrder: (map['sortOrder'] as String).input(),
    );
  }
}


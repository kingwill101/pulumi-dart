// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';

/// Result data returned by getProductSet.
class GetProductSetResult {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  final String? displayName;
  /// If there was an error with indexing the product set, the field is populated. This field is ignored when creating a ProductSet.
  final StatusResponse? indexError;
  /// The time at which this ProductSet was last indexed. Query results will reflect all updates before this time. If this ProductSet has never been indexed, this timestamp is the default value "1970-01-01T00:00:00Z". This field is ignored when creating a ProductSet.
  final String? indexTime;
  /// The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  final String? name;

  /// Creates a new [GetProductSetResult].
  /// [displayName] The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  /// [indexError] If there was an error with indexing the product set, the field is populated. This field is ignored when creating a ProductSet.
  /// [indexTime] The time at which this ProductSet was last indexed. Query results will reflect all updates before this time. If this ProductSet has never been indexed, this timestamp is the default value "1970-01-01T00:00:00Z". This field is ignored when creating a ProductSet.
  /// [name] The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  const GetProductSetResult({
    this.displayName,
    this.indexError,
    this.indexTime,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'indexError': ?indexError?.toMap(),
      'indexTime': ?indexTime,
      'name': ?name,
    };
  }

  factory GetProductSetResult.fromMap(Map<String, dynamic> map) {
    return GetProductSetResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexError: (() { final guardedValue = map['indexError']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      indexTime: (() { final guardedValue = map['indexTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

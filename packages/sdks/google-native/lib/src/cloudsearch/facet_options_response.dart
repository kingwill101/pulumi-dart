// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integer_faceting_options_response.dart';

/// Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.
class FacetOptionsResponse {
  /// If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  final pulumi.Input<IntegerFacetingOptionsResponse> integerFacetingOptions;
  /// Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  final pulumi.Input<int> numFacetBuckets;
  /// If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  final pulumi.Input<String> objectType;
  /// The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  final pulumi.Input<String> operatorName;
  /// Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  final pulumi.Input<String> sourceName;

  /// Creates a new [FacetOptionsResponse].
  /// [integerFacetingOptions] If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  /// [numFacetBuckets] Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  /// [objectType] If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  /// [operatorName] The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  /// [sourceName] Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  const FacetOptionsResponse({
    required this.integerFacetingOptions,
    required this.numFacetBuckets,
    required this.objectType,
    required this.operatorName,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integerFacetingOptions': pulumi.Input.mapInputValue<IntegerFacetingOptionsResponse, Map<String, dynamic>>(integerFacetingOptions, (value) => value.toMap()),
      'numFacetBuckets': numFacetBuckets,
      'objectType': objectType,
      'operatorName': operatorName,
      'sourceName': sourceName,
    };
  }

  factory FacetOptionsResponse.fromMap(Map<String, dynamic> map) {
    return FacetOptionsResponse(
      integerFacetingOptions: pulumi.Input.fromValue(IntegerFacetingOptionsResponse.fromMap((map['integerFacetingOptions']! as Map).cast<String, dynamic>())),
      numFacetBuckets: pulumi.Input.fromValue(map['numFacetBuckets'] as int),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      operatorName: pulumi.Input.fromValue(map['operatorName'] as String),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
    );
  }
}


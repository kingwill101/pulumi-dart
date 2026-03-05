// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integer_faceting_options.dart';

/// Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.
class FacetOptions {
  /// If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  final pulumi.Input<IntegerFacetingOptions>? integerFacetingOptions;
  /// Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  final pulumi.Input<int>? numFacetBuckets;
  /// If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  final pulumi.Input<String>? objectType;
  /// The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  final pulumi.Input<String>? operatorName;
  /// Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  final pulumi.Input<String>? sourceName;

  /// Creates a new [FacetOptions].
  /// [integerFacetingOptions] If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  /// [numFacetBuckets] Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  /// [objectType] If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  /// [operatorName] The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  /// [sourceName] Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  FacetOptions({
    this.integerFacetingOptions,
    this.numFacetBuckets,
    this.objectType,
    this.operatorName,
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integerFacetingOptions': ?pulumi.Input.mapOptionalInputValue<IntegerFacetingOptions, Map<String, dynamic>>(integerFacetingOptions, (value) => value.toMap()),
      'numFacetBuckets': ?numFacetBuckets,
      'objectType': ?objectType,
      'operatorName': ?operatorName,
      'sourceName': ?sourceName,
    };
  }

  factory FacetOptions.fromMap(Map<String, dynamic> map) {
    return FacetOptions(
      integerFacetingOptions: (() { final guardedValue = map['integerFacetingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegerFacetingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numFacetBuckets: (() { final guardedValue = map['numFacetBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorName: (() { final guardedValue = map['operatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes {
  /// A set of BiqQuery table types
  /// Each value may be one of: `BIG_QUERY_TABLE_TYPE_TABLE`, `BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE`.
  final pulumi.Input<List<String>>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes].
  /// [types] A set of BiqQuery table types
  PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes({
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types': ?types,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes(
      types: map['types'] == null ? null : ((map['types'] as List).cast<String>()).input(),
    );
  }
}


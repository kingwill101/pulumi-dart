// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_sql_target_filter_collection_include_regexes.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes>? includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection(
      includeRegexes: map['includeRegexes'] == null ? null : (PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes.fromMap((map['includeRegexes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


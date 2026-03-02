// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_sql_target_filter_collection.dart';
import 'prevention_discovery_config_target_cloud_sql_target_filter_database_resource_reference.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetFilter {
  /// A collection of resources for this filter to apply to.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection>? collection;
  /// The database resource to scan. Targets including this can only include one target (the target with this database resource reference).
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference>? databaseResourceReference;
  /// Match discovery resources not covered by any other filter.
  final pulumi.Input<Map<String, dynamic>>? others;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetFilter].
  /// [collection] A collection of resources for this filter to apply to.
  /// [databaseResourceReference] The database resource to scan. Targets including this can only include one target (the target with this database resource reference).
  /// [others] Match discovery resources not covered by any other filter.
  PreventionDiscoveryConfigTargetCloudSqlTargetFilter({
    this.collection,
    this.databaseResourceReference,
    this.others,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection, Map<String, dynamic>>(collection, (value) => value.toMap()),
      'databaseResourceReference': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference, Map<String, dynamic>>(databaseResourceReference, (value) => value.toMap()),
      'others': ?others,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilter.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilter(
      collection: map['collection'] == null ? null : (PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection.fromMap((map['collection']! as Map).cast<String, dynamic>())).input(),
      databaseResourceReference: map['databaseResourceReference'] == null ? null : (PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference.fromMap((map['databaseResourceReference']! as Map).cast<String, dynamic>())).input(),
      others: map['others'] == null ? null : ((map['others']! as Map).cast<String, dynamic>()).input(),
    );
  }
}


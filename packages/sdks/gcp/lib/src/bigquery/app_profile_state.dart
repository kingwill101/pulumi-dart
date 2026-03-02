// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_profile_data_boost_isolation_read_only.dart';
import 'app_profile_single_cluster_routing.dart';
import 'app_profile_standard_isolation.dart';

/// Input properties used for looking up and filtering AppProfile resources.
class AppProfileState {
  /// The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String>? appProfileId;
  /// Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// Structure is documented below.
  final pulumi.Input<AppProfileDataBoostIsolationReadOnly>? dataBoostIsolationReadOnly;
  /// Long form description of the use case for this app profile.
  final pulumi.Input<String>? description;
  /// If true, ignore safety checks when deleting/updating the app profile.
  final pulumi.Input<bool>? ignoreWarnings;
  /// The name of the instance to create the app profile within.
  final pulumi.Input<String>? instance;
  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  final pulumi.Input<List<String>>? multiClusterRoutingClusterIds;
  /// If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
  /// consistency to improve availability.
  final pulumi.Input<bool>? multiClusterRoutingUseAny;
  /// The unique name of the requested app profile. Values are of the form `projects/<project>/instances/<instance>/appProfiles/<appProfileId>`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  final pulumi.Input<bool>? rowAffinity;
  /// Use a single-cluster routing policy.
  /// Structure is documented below.
  final pulumi.Input<AppProfileSingleClusterRouting>? singleClusterRouting;
  /// The standard options used for isolating this app profile's traffic from other use cases.
  /// Structure is documented below.
  final pulumi.Input<AppProfileStandardIsolation>? standardIsolation;

  /// Creates a new [AppProfileState].
  /// [appProfileId] The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [dataBoostIsolationReadOnly] Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// [description] Long form description of the use case for this app profile.
  /// [ignoreWarnings] If true, ignore safety checks when deleting/updating the app profile.
  /// [instance] The name of the instance to create the app profile within.
  /// [multiClusterRoutingClusterIds] The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  /// [multiClusterRoutingUseAny] If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// [name] The unique name of the requested app profile. Values are of the form `projects/<project>/instances/<instance>/appProfiles/<appProfileId>`.
  /// [project] The ID of the project in which the resource belongs.
  /// [rowAffinity] Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  /// [singleClusterRouting] Use a single-cluster routing policy.
  /// [standardIsolation] The standard options used for isolating this app profile's traffic from other use cases.
  AppProfileState({
    this.appProfileId,
    this.dataBoostIsolationReadOnly,
    this.description,
    this.ignoreWarnings,
    this.instance,
    this.multiClusterRoutingClusterIds,
    this.multiClusterRoutingUseAny,
    this.name,
    this.project,
    this.rowAffinity,
    this.singleClusterRouting,
    this.standardIsolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': ?appProfileId,
      'dataBoostIsolationReadOnly': ?pulumi.Input.mapOptionalInputValue<AppProfileDataBoostIsolationReadOnly, Map<String, dynamic>>(dataBoostIsolationReadOnly, (value) => value.toMap()),
      'description': ?description,
      'ignoreWarnings': ?ignoreWarnings,
      'instance': ?instance,
      'multiClusterRoutingClusterIds': ?multiClusterRoutingClusterIds,
      'multiClusterRoutingUseAny': ?multiClusterRoutingUseAny,
      'name': ?name,
      'project': ?project,
      'rowAffinity': ?rowAffinity,
      'singleClusterRouting': ?pulumi.Input.mapOptionalInputValue<AppProfileSingleClusterRouting, Map<String, dynamic>>(singleClusterRouting, (value) => value.toMap()),
      'standardIsolation': ?pulumi.Input.mapOptionalInputValue<AppProfileStandardIsolation, Map<String, dynamic>>(standardIsolation, (value) => value.toMap()),
    };
  }

  factory AppProfileState.fromMap(Map<String, dynamic> map) {
    return AppProfileState(
      appProfileId: map['appProfileId'] == null ? null : (map['appProfileId'] as String).input(),
      dataBoostIsolationReadOnly: map['dataBoostIsolationReadOnly'] == null ? null : (AppProfileDataBoostIsolationReadOnly.fromMap((map['dataBoostIsolationReadOnly'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ignoreWarnings: map['ignoreWarnings'] == null ? null : (map['ignoreWarnings'] as bool).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      multiClusterRoutingClusterIds: map['multiClusterRoutingClusterIds'] == null ? null : ((map['multiClusterRoutingClusterIds'] as List).cast<String>()).input(),
      multiClusterRoutingUseAny: map['multiClusterRoutingUseAny'] == null ? null : (map['multiClusterRoutingUseAny'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      rowAffinity: map['rowAffinity'] == null ? null : (map['rowAffinity'] as bool).input(),
      singleClusterRouting: map['singleClusterRouting'] == null ? null : (AppProfileSingleClusterRouting.fromMap((map['singleClusterRouting'] as Map).cast<String, dynamic>())).input(),
      standardIsolation: map['standardIsolation'] == null ? null : (AppProfileStandardIsolation.fromMap((map['standardIsolation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_entity_count.dart';
import 'watchlist_entity_population_mechanism.dart';
import 'watchlist_watchlist_user_preferences.dart';

/// Input properties used for looking up and filtering Watchlist resources.
class WatchlistState {
  /// Output only. Time the watchlist was created.
  final pulumi.Input<String>? createTime;
  /// Optional. Description of the watchlist.
  final pulumi.Input<String>? description;
  /// Required. Display name of the watchlist.
  /// Note that it must be at least one character and less than 63 characters
  /// (https://google.aip.dev/148).
  final pulumi.Input<String>? displayName;
  /// Count of different types of entities in the watchlist.
  /// Structure is documented below.
  final pulumi.Input<List<WatchlistEntityCount>>? entityCounts;
  /// Mechanism to populate entities in the watchlist.
  /// Structure is documented below.
  final pulumi.Input<WatchlistEntityPopulationMechanism>? entityPopulationMechanism;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// Optional. Weight applied to the risk score for entities
  /// in this watchlist.
  /// The default is 1.0 if it is not specified.
  final pulumi.Input<double>? multiplyingFactor;
  /// Identifier. Resource name of the watchlist. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/watchlists/{watchlist}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. Time the watchlist was last updated.
  final pulumi.Input<String>? updateTime;
  /// Optional. The ID to use for the watchlist,
  /// which will become the final component of the watchlist's resource name.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  final pulumi.Input<String>? watchlistId;
  /// A collection of user preferences for watchlist UI configuration.
  /// Structure is documented below.
  final pulumi.Input<WatchlistWatchlistUserPreferences>? watchlistUserPreferences;

  /// Creates a new [WatchlistState].
  /// [createTime] Output only. Time the watchlist was created.
  /// [description] Optional. Description of the watchlist.
  /// [displayName] Required. Display name of the watchlist.
  /// [entityCounts] Count of different types of entities in the watchlist.
  /// [entityPopulationMechanism] Mechanism to populate entities in the watchlist.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [multiplyingFactor] Optional. Weight applied to the risk score for entities
  /// [name] Identifier. Resource name of the watchlist. This unique identifier is generated using values provided for the URL parameters.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. Time the watchlist was last updated.
  /// [watchlistId] Optional. The ID to use for the watchlist,
  /// [watchlistUserPreferences] A collection of user preferences for watchlist UI configuration.
  WatchlistState({
    this.createTime,
    this.description,
    this.displayName,
    this.entityCounts,
    this.entityPopulationMechanism,
    this.instance,
    this.location,
    this.multiplyingFactor,
    this.name,
    this.project,
    this.updateTime,
    this.watchlistId,
    this.watchlistUserPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'entityCounts': ?pulumi.Input.mapOptionalInputValue<List<WatchlistEntityCount>, List<Map<String, dynamic>>>(entityCounts, (value) => pulumi.Input.encodeList<WatchlistEntityCount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityPopulationMechanism': ?pulumi.Input.mapOptionalInputValue<WatchlistEntityPopulationMechanism, Map<String, dynamic>>(entityPopulationMechanism, (value) => value.toMap()),
      'instance': ?instance,
      'location': ?location,
      'multiplyingFactor': ?multiplyingFactor,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
      'watchlistId': ?watchlistId,
      'watchlistUserPreferences': ?pulumi.Input.mapOptionalInputValue<WatchlistWatchlistUserPreferences, Map<String, dynamic>>(watchlistUserPreferences, (value) => value.toMap()),
    };
  }

  factory WatchlistState.fromMap(Map<String, dynamic> map) {
    return WatchlistState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entityCounts: map['entityCounts'] == null ? null : (pulumi.Input.decodeList<WatchlistEntityCount>(map['entityCounts']!, (value) => WatchlistEntityCount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entityPopulationMechanism: map['entityPopulationMechanism'] == null ? null : (WatchlistEntityPopulationMechanism.fromMap((map['entityPopulationMechanism']! as Map).cast<String, dynamic>())).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      multiplyingFactor: map['multiplyingFactor'] == null ? null : (map['multiplyingFactor']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      watchlistId: map['watchlistId'] == null ? null : (map['watchlistId']! as String).input(),
      watchlistUserPreferences: map['watchlistUserPreferences'] == null ? null : (WatchlistWatchlistUserPreferences.fromMap((map['watchlistUserPreferences']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


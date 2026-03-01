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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<WatchlistEntityCount>>? entityCounts,
    pulumi.Output<WatchlistEntityPopulationMechanism>? entityPopulationMechanism,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? location,
    pulumi.Output<double>? multiplyingFactor,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? watchlistId,
    pulumi.Output<WatchlistWatchlistUserPreferences>? watchlistUserPreferences,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entityCounts = pulumi.Input.asOptionalInput<List<WatchlistEntityCount>>(entityCounts),
      entityPopulationMechanism = pulumi.Input.asOptionalInput<WatchlistEntityPopulationMechanism>(entityPopulationMechanism),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      location = pulumi.Input.asOptionalInput<String>(location),
      multiplyingFactor = pulumi.Input.asOptionalInput<double>(multiplyingFactor),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      watchlistId = pulumi.Input.asOptionalInput<String>(watchlistId),
      watchlistUserPreferences = pulumi.Input.asOptionalInput<WatchlistWatchlistUserPreferences>(watchlistUserPreferences);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entityCounts: map['entityCounts'] == null ? null : pulumi.Output.create<List<WatchlistEntityCount>>(pulumi.Input.decodeList<WatchlistEntityCount>(map['entityCounts'], (value) => WatchlistEntityCount.fromMap((value as Map).cast<String, dynamic>()))),
      entityPopulationMechanism: map['entityPopulationMechanism'] == null ? null : pulumi.Output.create<WatchlistEntityPopulationMechanism>(WatchlistEntityPopulationMechanism.fromMap((map['entityPopulationMechanism'] as Map).cast<String, dynamic>())),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multiplyingFactor: map['multiplyingFactor'] == null ? null : pulumi.Output.create<double>(map['multiplyingFactor'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      watchlistId: map['watchlistId'] == null ? null : pulumi.Output.create<String>(map['watchlistId'] as String),
      watchlistUserPreferences: map['watchlistUserPreferences'] == null ? null : pulumi.Output.create<WatchlistWatchlistUserPreferences>(WatchlistWatchlistUserPreferences.fromMap((map['watchlistUserPreferences'] as Map).cast<String, dynamic>())),
    );
  }
}


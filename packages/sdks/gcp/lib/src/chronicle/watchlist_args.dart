// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_entity_population_mechanism.dart';
import 'watchlist_watchlist_user_preferences.dart';

/// {@template pulumi_chronicle_watchlist_watchlist_args_doc}
/// The set of arguments for Watchlist.
/// {@endtemplate}
/// {@macro pulumi_chronicle_watchlist_watchlist_args_doc}
class WatchlistArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Description of the watchlist.
  final pulumi.Input<String>? description;
  /// Required. Display name of the watchlist.
  /// Note that it must be at least one character and less than 63 characters
  /// (https://google.aip.dev/148).
  final pulumi.Input<String> displayName;
  /// Mechanism to populate entities in the watchlist.
  /// Structure is documented below.
  final pulumi.Input<WatchlistEntityPopulationMechanism> entityPopulationMechanism;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// Optional. Weight applied to the risk score for entities
  /// in this watchlist.
  /// The default is 1.0 if it is not specified.
  final pulumi.Input<double>? multiplyingFactor;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. The ID to use for the watchlist,
  /// which will become the final component of the watchlist's resource name.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  final pulumi.Input<String>? watchlistId;
  /// A collection of user preferences for watchlist UI configuration.
  /// Structure is documented below.
  final pulumi.Input<WatchlistWatchlistUserPreferences>? watchlistUserPreferences;

  /// Creates a new [WatchlistArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Description of the watchlist.
  /// [displayName] Required. Display name of the watchlist.
  /// [entityPopulationMechanism] Mechanism to populate entities in the watchlist.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [multiplyingFactor] Optional. Weight applied to the risk score for entities
  /// [project] The ID of the project in which the resource belongs.
  /// [watchlistId] Optional. The ID to use for the watchlist,
  /// [watchlistUserPreferences] A collection of user preferences for watchlist UI configuration.
  const WatchlistArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    required this.entityPopulationMechanism,
    required this.instance,
    required this.location,
    this.multiplyingFactor,
    this.project,
    this.watchlistId,
    this.watchlistUserPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'entityPopulationMechanism': pulumi.Input.mapInputValue<WatchlistEntityPopulationMechanism, Map<String, dynamic>>(entityPopulationMechanism, (value) => value.toMap()),
      'instance': instance,
      'location': location,
      'multiplyingFactor': ?multiplyingFactor,
      'project': ?project,
      'watchlistId': ?watchlistId,
      'watchlistUserPreferences': ?pulumi.Input.mapOptionalInputValue<WatchlistWatchlistUserPreferences, Map<String, dynamic>>(watchlistUserPreferences, (value) => value.toMap()),
    };
  }

  factory WatchlistArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      entityPopulationMechanism: pulumi.Input.fromValue(WatchlistEntityPopulationMechanism.fromMap((map['entityPopulationMechanism']! as Map).cast<String, dynamic>())),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      multiplyingFactor: (() { final guardedValue = map['multiplyingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      watchlistId: (() { final guardedValue = map['watchlistId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      watchlistUserPreferences: (() { final guardedValue = map['watchlistUserPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WatchlistWatchlistUserPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

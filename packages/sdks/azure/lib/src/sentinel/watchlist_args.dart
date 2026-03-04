// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_watchlist_watchlist_args_doc}
/// The set of arguments for Watchlist.
/// {@endtemplate}
/// {@macro pulumi_sentinel_watchlist_watchlist_args_doc}
class WatchlistArgs {
  /// The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? defaultDuration;

  /// The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? description;

  /// The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String> displayName;

  /// The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String> itemSearchKey;

  /// Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<List<String>>? labels;

  /// The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [WatchlistArgs].
  /// [defaultDuration] The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [description] The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [displayName] The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [itemSearchKey] The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created.
  /// [labels] Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created.
  /// [name] The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  WatchlistArgs({
    this.defaultDuration,
    this.description,
    required this.displayName,
    required this.itemSearchKey,
    this.labels,
    required this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDuration': ?defaultDuration,
      'description': ?description,
      'displayName': displayName,
      'itemSearchKey': itemSearchKey,
      'labels': ?labels,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory WatchlistArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistArgs(
      defaultDuration: (() {
        final guardedValue = map['defaultDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      itemSearchKey: pulumi.Input.fromValue(map['itemSearchKey'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

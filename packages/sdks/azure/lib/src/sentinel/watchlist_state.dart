// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Watchlist resources.
class WatchlistState {
  /// The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String?>? defaultDuration;
  /// The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String?>? description;
  /// The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String?>? displayName;
  /// The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String?>? itemSearchKey;
  /// Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<List<String>?>? labels;
  /// The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String?>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [WatchlistState].
  /// [defaultDuration] The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [description] The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [displayName] The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [itemSearchKey] The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created.
  /// [labels] Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created.
  /// [name] The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  const WatchlistState({
    this.defaultDuration,
    this.description,
    this.displayName,
    this.itemSearchKey,
    this.labels,
    this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDuration': ?defaultDuration,
      'description': ?description,
      'displayName': ?displayName,
      'itemSearchKey': ?itemSearchKey,
      'labels': ?labels,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory WatchlistState.fromMap(Map<String, dynamic> map) {
    return WatchlistState(
      defaultDuration: (() { final guardedValue = map['defaultDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemSearchKey: (() { final guardedValue = map['itemSearchKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

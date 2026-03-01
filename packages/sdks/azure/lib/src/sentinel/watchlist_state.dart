// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Watchlist resources.
class WatchlistState {
  /// The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? defaultDuration;
  /// The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? description;
  /// The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? displayName;
  /// The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? itemSearchKey;
  /// Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<List<String>>? labels;
  /// The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [WatchlistState].
  /// [defaultDuration] The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [description] The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [displayName] The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [itemSearchKey] The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created.
  /// [labels] Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created.
  /// [name] The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created.
  WatchlistState({
    pulumi.Output<String>? defaultDuration,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? itemSearchKey,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
  }) :
      defaultDuration = pulumi.Input.asOptionalInput<String>(defaultDuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      itemSearchKey = pulumi.Input.asOptionalInput<String>(itemSearchKey),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      defaultDuration: map['defaultDuration'] == null ? null : pulumi.Output.create<String>(map['defaultDuration'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      itemSearchKey: map['itemSearchKey'] == null ? null : pulumi.Output.create<String>(map['itemSearchKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


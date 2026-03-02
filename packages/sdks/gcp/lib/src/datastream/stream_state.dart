// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all.dart';
import 'stream_destination_config.dart';
import 'stream_rule_set.dart';
import 'stream_source_config.dart';

/// Input properties used for looking up and filtering Stream resources.
class StreamState {
  /// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAll>? backfillAll;
  /// Backfill strategy to disable automatic backfill for the Stream's objects.
  final pulumi.Input<Map<String, dynamic>>? backfillNone;
  /// Create the stream without validating it.
  final pulumi.Input<bool>? createWithoutValidation;
  /// A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final pulumi.Input<String>? customerManagedEncryptionKey;
  /// Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// `NOT_STARTED` to create the stream without starting and `PAUSED` to pause
  /// the stream from a `RUNNING` state.
  /// Possible values: NOT_STARTED, RUNNING, PAUSED. Default: NOT_STARTED
  final pulumi.Input<String>? desiredState;
  /// Destination connection profile configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamDestinationConfig>? destinationConfig;
  /// Display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location this stream is located in.
  final pulumi.Input<String>? location;
  /// The stream's name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Rule sets to apply to the stream.
  /// Structure is documented below.
  final pulumi.Input<List<StreamRuleSet>>? ruleSets;
  /// Source connection profile configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfig>? sourceConfig;
  /// The state of the stream.
  final pulumi.Input<String>? state;
  /// The stream identifier.
  final pulumi.Input<String>? streamId;

  /// Creates a new [StreamState].
  /// [backfillAll] Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// [backfillNone] Backfill strategy to disable automatic backfill for the Stream's objects.
  /// [createWithoutValidation] Create the stream without validating it.
  /// [customerManagedEncryptionKey] A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// [desiredState] Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels.
  /// [location] The name of the location this stream is located in.
  /// [name] The stream's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [ruleSets] Rule sets to apply to the stream.
  /// [sourceConfig] Source connection profile configuration.
  /// [state] The state of the stream.
  /// [streamId] The stream identifier.
  StreamState({
    this.backfillAll,
    this.backfillNone,
    this.createWithoutValidation,
    this.customerManagedEncryptionKey,
    this.desiredState,
    this.destinationConfig,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.ruleSets,
    this.sourceConfig,
    this.state,
    this.streamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAll, Map<String, dynamic>>(backfillAll, (value) => value.toMap()),
      'backfillNone': ?backfillNone,
      'createWithoutValidation': ?createWithoutValidation,
      'customerManagedEncryptionKey': ?customerManagedEncryptionKey,
      'desiredState': ?desiredState,
      'destinationConfig': ?pulumi.Input.mapOptionalInputValue<StreamDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<StreamRuleSet>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<StreamRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfig, Map<String, dynamic>>(sourceConfig, (value) => value.toMap()),
      'state': ?state,
      'streamId': ?streamId,
    };
  }

  factory StreamState.fromMap(Map<String, dynamic> map) {
    return StreamState(
      backfillAll: map['backfillAll'] == null ? null : (StreamBackfillAll.fromMap((map['backfillAll'] as Map).cast<String, dynamic>())).input(),
      backfillNone: map['backfillNone'] == null ? null : ((map['backfillNone'] as Map).cast<String, dynamic>()).input(),
      createWithoutValidation: map['createWithoutValidation'] == null ? null : (map['createWithoutValidation'] as bool).input(),
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] == null ? null : (map['customerManagedEncryptionKey'] as String).input(),
      desiredState: map['desiredState'] == null ? null : (map['desiredState'] as String).input(),
      destinationConfig: map['destinationConfig'] == null ? null : (StreamDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      ruleSets: map['ruleSets'] == null ? null : (pulumi.Input.decodeList<StreamRuleSet>(map['ruleSets'], (value) => StreamRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConfig: map['sourceConfig'] == null ? null : (StreamSourceConfig.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      streamId: map['streamId'] == null ? null : (map['streamId'] as String).input(),
    );
  }
}


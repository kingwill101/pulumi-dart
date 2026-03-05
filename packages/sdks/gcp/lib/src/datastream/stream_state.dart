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
      backfillAll: (() { final guardedValue = map['backfillAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAll.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backfillNone: (() { final guardedValue = map['backfillNone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      createWithoutValidation: (() { final guardedValue = map['createWithoutValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customerManagedEncryptionKey: (() { final guardedValue = map['customerManagedEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfig: (() { final guardedValue = map['destinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamRuleSet>(guardedValue, (value) => StreamRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceConfig: (() { final guardedValue = map['sourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


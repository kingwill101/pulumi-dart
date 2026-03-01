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
    pulumi.Output<StreamBackfillAll>? backfillAll,
    pulumi.Output<Map<String, dynamic>>? backfillNone,
    pulumi.Output<bool>? createWithoutValidation,
    pulumi.Output<String>? customerManagedEncryptionKey,
    pulumi.Output<String>? desiredState,
    pulumi.Output<StreamDestinationConfig>? destinationConfig,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<StreamRuleSet>>? ruleSets,
    pulumi.Output<StreamSourceConfig>? sourceConfig,
    pulumi.Output<String>? state,
    pulumi.Output<String>? streamId,
  }) :
      backfillAll = pulumi.Input.asOptionalInput<StreamBackfillAll>(backfillAll),
      backfillNone = pulumi.Input.asOptionalInput<Map<String, dynamic>>(backfillNone),
      createWithoutValidation = pulumi.Input.asOptionalInput<bool>(createWithoutValidation),
      customerManagedEncryptionKey = pulumi.Input.asOptionalInput<String>(customerManagedEncryptionKey),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      destinationConfig = pulumi.Input.asOptionalInput<StreamDestinationConfig>(destinationConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      ruleSets = pulumi.Input.asOptionalInput<List<StreamRuleSet>>(ruleSets),
      sourceConfig = pulumi.Input.asOptionalInput<StreamSourceConfig>(sourceConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      streamId = pulumi.Input.asOptionalInput<String>(streamId);

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
      backfillAll: map['backfillAll'] == null ? null : pulumi.Output.create<StreamBackfillAll>(StreamBackfillAll.fromMap((map['backfillAll'] as Map).cast<String, dynamic>())),
      backfillNone: map['backfillNone'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['backfillNone'] as Map).cast<String, dynamic>()),
      createWithoutValidation: map['createWithoutValidation'] == null ? null : pulumi.Output.create<bool>(map['createWithoutValidation'] as bool),
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedEncryptionKey'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      destinationConfig: map['destinationConfig'] == null ? null : pulumi.Output.create<StreamDestinationConfig>(StreamDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      ruleSets: map['ruleSets'] == null ? null : pulumi.Output.create<List<StreamRuleSet>>(pulumi.Input.decodeList<StreamRuleSet>(map['ruleSets'], (value) => StreamRuleSet.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConfig: map['sourceConfig'] == null ? null : pulumi.Output.create<StreamSourceConfig>(StreamSourceConfig.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      streamId: map['streamId'] == null ? null : pulumi.Output.create<String>(map['streamId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all.dart';
import 'stream_destination_config.dart';
import 'stream_rule_set.dart';
import 'stream_source_config.dart';

/// {@template pulumi_datastream_stream_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_datastream_stream_stream_args_doc}
class StreamArgs {
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// `NOT_STARTED` to create the stream without starting and `PAUSED` to pause
  /// the stream from a `RUNNING` state.
  /// Possible values: NOT_STARTED, RUNNING, PAUSED. Default: NOT_STARTED
  final pulumi.Input<String>? desiredState;
  /// Destination connection profile configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamDestinationConfig> destinationConfig;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location this stream is located in.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Rule sets to apply to the stream.
  /// Structure is documented below.
  final pulumi.Input<List<StreamRuleSet>>? ruleSets;
  /// Source connection profile configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfig> sourceConfig;
  /// The stream identifier.
  final pulumi.Input<String> streamId;

  /// Creates a new [StreamArgs].
  /// [backfillAll] Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// [backfillNone] Backfill strategy to disable automatic backfill for the Stream's objects.
  /// [createWithoutValidation] Create the stream without validating it.
  /// [customerManagedEncryptionKey] A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] The name of the location this stream is located in.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleSets] Rule sets to apply to the stream.
  /// [sourceConfig] Source connection profile configuration.
  /// [streamId] The stream identifier.
  const StreamArgs({
    this.backfillAll,
    this.backfillNone,
    this.createWithoutValidation,
    this.customerManagedEncryptionKey,
    this.deletionPolicy,
    this.desiredState,
    required this.destinationConfig,
    required this.displayName,
    this.labels,
    required this.location,
    this.project,
    this.ruleSets,
    required this.sourceConfig,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAll, Map<String, dynamic>>(backfillAll, (value) => value.toMap()),
      'backfillNone': ?backfillNone,
      'createWithoutValidation': ?createWithoutValidation,
      'customerManagedEncryptionKey': ?customerManagedEncryptionKey,
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'destinationConfig': pulumi.Input.mapInputValue<StreamDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'displayName': displayName,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<StreamRuleSet>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<StreamRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConfig': pulumi.Input.mapInputValue<StreamSourceConfig, Map<String, dynamic>>(sourceConfig, (value) => value.toMap()),
      'streamId': streamId,
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      backfillAll: (() { final guardedValue = map['backfillAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAll.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backfillNone: (() { final guardedValue = map['backfillNone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      createWithoutValidation: (() { final guardedValue = map['createWithoutValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customerManagedEncryptionKey: (() { final guardedValue = map['customerManagedEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfig: pulumi.Input.fromValue(StreamDestinationConfig.fromMap((map['destinationConfig']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamRuleSet>(guardedValue, (value) => StreamRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceConfig: pulumi.Input.fromValue(StreamSourceConfig.fromMap((map['sourceConfig']! as Map).cast<String, dynamic>())),
      streamId: pulumi.Input.fromValue(map['streamId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy.dart';
import 'destination_config.dart';
import 'source_config.dart';
import 'stream_state.dart';

/// {@template pulumi_datastream_v1_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_stream_args_doc}
class StreamArgs {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final pulumi.Input<BackfillAllStrategy>? backfillAll;
  /// Do not automatically backfill any objects.
  final pulumi.Input<Map<String, dynamic>>? backfillNone;
  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final pulumi.Input<String>? customerManagedEncryptionKey;
  /// Destination connection profile configuration.
  final pulumi.Input<DestinationConfig> destinationConfig;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Optional. Create the stream without validating it.
  final pulumi.Input<bool>? force;
  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Source connection profile configuration.
  final pulumi.Input<SourceConfig> sourceConfig;
  /// The state of the stream.
  final pulumi.Input<StreamState>? state;
  /// Required. The stream identifier.
  final pulumi.Input<String> streamId;

  /// Creates a new [StreamArgs].
  /// [backfillAll] Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  /// [backfillNone] Do not automatically backfill any objects.
  /// [customerManagedEncryptionKey] Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [force] Optional. Create the stream without validating it.
  /// [labels] Labels.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceConfig] Source connection profile configuration.
  /// [state] The state of the stream.
  /// [streamId] Required. The stream identifier.
  StreamArgs({
    this.backfillAll,
    this.backfillNone,
    this.customerManagedEncryptionKey,
    required this.destinationConfig,
    required this.displayName,
    this.force,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.sourceConfig,
    this.state,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll': ?pulumi.Input.mapOptionalInputValue<BackfillAllStrategy, Map<String, dynamic>>(backfillAll, (value) => value.toMap()),
      'backfillNone': ?backfillNone,
      'customerManagedEncryptionKey': ?customerManagedEncryptionKey,
      'destinationConfig': pulumi.Input.mapInputValue<DestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'displayName': displayName,
      'force': ?force,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'sourceConfig': pulumi.Input.mapInputValue<SourceConfig, Map<String, dynamic>>(sourceConfig, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<StreamState, String>(state, (value) => value.value),
      'streamId': streamId,
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      backfillAll: map['backfillAll'] == null ? null : (BackfillAllStrategy.fromMap((map['backfillAll']! as Map).cast<String, dynamic>())).input(),
      backfillNone: map['backfillNone'] == null ? null : ((map['backfillNone']! as Map).cast<String, dynamic>()).input(),
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] == null ? null : (map['customerManagedEncryptionKey']! as String).input(),
      destinationConfig: (DestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      sourceConfig: (SourceConfig.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (StreamState.fromValue(map['state']! as String)).input(),
      streamId: (map['streamId'] as String).input(),
    );
  }
}


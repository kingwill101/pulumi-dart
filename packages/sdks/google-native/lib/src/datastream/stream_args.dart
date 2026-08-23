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
  const StreamArgs({
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
      'state': ?pulumi.Input.mapOptionalInputValue<StreamState, String>(state, (value) => value.wireValue),
      'streamId': streamId,
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      backfillAll: (() { final guardedValue = map['backfillAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackfillAllStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backfillNone: (() { final guardedValue = map['backfillNone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      customerManagedEncryptionKey: (() { final guardedValue = map['customerManagedEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfig: pulumi.Input.fromValue(DestinationConfig.fromMap((map['destinationConfig']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceConfig: pulumi.Input.fromValue(SourceConfig.fromMap((map['sourceConfig']! as Map).cast<String, dynamic>())),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamState.fromValue(guardedValue as String)); })(),
      streamId: pulumi.Input.fromValue(map['streamId'] as String),
    );
  }
}

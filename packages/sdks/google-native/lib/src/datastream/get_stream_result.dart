// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_response.dart';
import 'destination_config_response.dart';
import 'error_response.dart';
import 'source_config_response.dart';

/// Result data returned by getStream.
class GetStreamResult {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final BackfillAllStrategyResponse backfillAll;
  /// Do not automatically backfill any objects.
  final Map<String, dynamic> backfillNone;
  /// The creation time of the stream.
  final String createTime;
  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final String customerManagedEncryptionKey;
  /// Destination connection profile configuration.
  final DestinationConfigResponse destinationConfig;
  /// Display name.
  final String displayName;
  /// Errors on the Stream.
  final List<ErrorResponse> errors;
  /// Labels.
  final Map<String, String> labels;
  /// If the stream was recovered, the time of the last recovery. Note: This field is currently experimental.
  final String lastRecoveryTime;
  /// The stream's name.
  final String name;
  /// Source connection profile configuration.
  final SourceConfigResponse sourceConfig;
  /// The state of the stream.
  final String state;
  /// The last update time of the stream.
  final String updateTime;

  /// Creates a new [GetStreamResult].
  /// [backfillAll] Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  /// [backfillNone] Do not automatically backfill any objects.
  /// [createTime] The creation time of the stream.
  /// [customerManagedEncryptionKey] Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [errors] Errors on the Stream.
  /// [labels] Labels.
  /// [lastRecoveryTime] If the stream was recovered, the time of the last recovery. Note: This field is currently experimental.
  /// [name] The stream's name.
  /// [sourceConfig] Source connection profile configuration.
  /// [state] The state of the stream.
  /// [updateTime] The last update time of the stream.
  GetStreamResult({
    required this.backfillAll,
    required this.backfillNone,
    required this.createTime,
    required this.customerManagedEncryptionKey,
    required this.destinationConfig,
    required this.displayName,
    required this.errors,
    required this.labels,
    required this.lastRecoveryTime,
    required this.name,
    required this.sourceConfig,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll': backfillAll.toMap(),
      'backfillNone': backfillNone,
      'createTime': createTime,
      'customerManagedEncryptionKey': customerManagedEncryptionKey,
      'destinationConfig': destinationConfig.toMap(),
      'displayName': displayName,
      'errors': pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'labels': labels,
      'lastRecoveryTime': lastRecoveryTime,
      'name': name,
      'sourceConfig': sourceConfig.toMap(),
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetStreamResult.fromMap(Map<String, dynamic> map) {
    return GetStreamResult(
      backfillAll: BackfillAllStrategyResponse.fromMap((map['backfillAll'] as Map).cast<String, dynamic>()),
      backfillNone: (map['backfillNone'] as Map).cast<String, dynamic>(),
      createTime: map['createTime'] as String,
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] as String,
      destinationConfig: DestinationConfigResponse.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      errors: pulumi.Input.decodeList<ErrorResponse>(map['errors'], (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      lastRecoveryTime: map['lastRecoveryTime'] as String,
      name: map['name'] as String,
      sourceConfig: SourceConfigResponse.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_response.dart';
import 'destination_config_response.dart';
import 'error_response.dart';
import 'source_config_response.dart';

/// Result data returned by getStream.
class GetStreamResult {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final BackfillAllStrategyResponse? backfillAll;
  /// Do not automatically backfill any objects.
  final Map<String, dynamic>? backfillNone;
  /// The creation time of the stream.
  final String? createTime;
  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final String? customerManagedEncryptionKey;
  /// Destination connection profile configuration.
  final DestinationConfigResponse? destinationConfig;
  /// Display name.
  final String? displayName;
  /// Errors on the Stream.
  final List<ErrorResponse>? errors;
  /// Labels.
  final Map<String, String>? labels;
  /// If the stream was recovered, the time of the last recovery. Note: This field is currently experimental.
  final String? lastRecoveryTime;
  /// The stream's name.
  final String? name;
  /// Source connection profile configuration.
  final SourceConfigResponse? sourceConfig;
  /// The state of the stream.
  final String? state;
  /// The last update time of the stream.
  final String? updateTime;

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
  const GetStreamResult({
    this.backfillAll,
    this.backfillNone,
    this.createTime,
    this.customerManagedEncryptionKey,
    this.destinationConfig,
    this.displayName,
    this.errors,
    this.labels,
    this.lastRecoveryTime,
    this.name,
    this.sourceConfig,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll': ?backfillAll?.toMap(),
      'backfillNone': ?backfillNone,
      'createTime': ?createTime,
      'customerManagedEncryptionKey': ?customerManagedEncryptionKey,
      'destinationConfig': ?destinationConfig?.toMap(),
      'displayName': ?displayName,
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'lastRecoveryTime': ?lastRecoveryTime,
      'name': ?name,
      'sourceConfig': ?sourceConfig?.toMap(),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetStreamResult.fromMap(Map<String, dynamic> map) {
    return GetStreamResult(
      backfillAll: (() { final guardedValue = map['backfillAll']; if (guardedValue == null) return null; return BackfillAllStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      backfillNone: (() { final guardedValue = map['backfillNone']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedEncryptionKey: (() { final guardedValue = map['customerManagedEncryptionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationConfig: (() { final guardedValue = map['destinationConfig']; if (guardedValue == null) return null; return DestinationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ErrorResponse>(guardedValue, (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastRecoveryTime: (() { final guardedValue = map['lastRecoveryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceConfig: (() { final guardedValue = map['sourceConfig']; if (guardedValue == null) return null; return SourceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

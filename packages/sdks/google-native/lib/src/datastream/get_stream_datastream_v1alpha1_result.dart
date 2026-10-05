// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_response_datastream_v1alpha1.dart';
import 'destination_config_response_datastream_v1alpha1.dart';
import 'error_response_datastream_v1alpha1.dart';
import 'source_config_response_datastream_v1alpha1.dart';

/// Result data returned by getStream.
class GetStreamDatastreamV1alpha1Result {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final BackfillAllStrategyResponseDatastreamV1alpha1? backfillAll;
  /// Do not automatically backfill any objects.
  final Map<String, dynamic>? backfillNone;
  /// The creation time of the stream.
  final String? createTime;
  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final String? customerManagedEncryptionKey;
  /// Destination connection profile configuration.
  final DestinationConfigResponseDatastreamV1alpha1? destinationConfig;
  /// Display name.
  final String? displayName;
  /// Errors on the Stream.
  final List<ErrorResponseDatastreamV1alpha1>? errors;
  /// Labels.
  final Map<String, String>? labels;
  /// The stream's name.
  final String? name;
  /// Source connection profile configuration.
  final SourceConfigResponseDatastreamV1alpha1? sourceConfig;
  /// The state of the stream.
  final String? state;
  /// The last update time of the stream.
  final String? updateTime;

  /// Creates a new [GetStreamDatastreamV1alpha1Result].
  /// [backfillAll] Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  /// [backfillNone] Do not automatically backfill any objects.
  /// [createTime] The creation time of the stream.
  /// [customerManagedEncryptionKey] Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [errors] Errors on the Stream.
  /// [labels] Labels.
  /// [name] The stream's name.
  /// [sourceConfig] Source connection profile configuration.
  /// [state] The state of the stream.
  /// [updateTime] The last update time of the stream.
  const GetStreamDatastreamV1alpha1Result({
    this.backfillAll,
    this.backfillNone,
    this.createTime,
    this.customerManagedEncryptionKey,
    this.destinationConfig,
    this.displayName,
    this.errors,
    this.labels,
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
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<ErrorResponseDatastreamV1alpha1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'name': ?name,
      'sourceConfig': ?sourceConfig?.toMap(),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetStreamDatastreamV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetStreamDatastreamV1alpha1Result(
      backfillAll: (() { final guardedValue = map['backfillAll']; if (guardedValue == null) return null; return BackfillAllStrategyResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      backfillNone: (() { final guardedValue = map['backfillNone']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedEncryptionKey: (() { final guardedValue = map['customerManagedEncryptionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationConfig: (() { final guardedValue = map['destinationConfig']; if (guardedValue == null) return null; return DestinationConfigResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ErrorResponseDatastreamV1alpha1>(guardedValue, (value) => ErrorResponseDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceConfig: (() { final guardedValue = map['sourceConfig']; if (guardedValue == null) return null; return SourceConfigResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

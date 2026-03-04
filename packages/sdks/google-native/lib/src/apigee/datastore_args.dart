// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_datastore_config.dart';

/// {@template pulumi_apigee_v1_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_datastore_args_doc}
class DatastoreArgs {
  /// Datastore Configurations.
  final pulumi.Input<GoogleCloudApigeeV1DatastoreConfig>? datastoreConfig;

  /// Display name in UI
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> organizationId;

  /// Destination storage type. Supported types `gcs` or `bigquery`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [DatastoreArgs].
  /// [datastoreConfig] Datastore Configurations.
  /// [displayName] Display name in UI
  /// [organizationId] Required.
  /// [targetType] Destination storage type. Supported types `gcs` or `bigquery`.
  DatastoreArgs({
    this.datastoreConfig,
    required this.displayName,
    required this.organizationId,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudApigeeV1DatastoreConfig,
            Map<String, dynamic>
          >(datastoreConfig, (value) => value.toMap()),
      'displayName': displayName,
      'organizationId': organizationId,
      'targetType': ?targetType,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      datastoreConfig: (() {
        final guardedValue = map['datastoreConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudApigeeV1DatastoreConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      targetType: (() {
        final guardedValue = map['targetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

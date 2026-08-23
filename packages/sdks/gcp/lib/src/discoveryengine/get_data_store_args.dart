// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_get_data_store_get_data_store_args_doc}
/// Arguments for getDataStore.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_get_data_store_get_data_store_args_doc}
class GetDataStoreArgs {
  /// The unique id of the data store. Exactly one of `dataStoreId` or `displayName` must be provided.
  final pulumi.Input<String>? dataStoreId;
  /// The display name of the data store. Exactly one of `dataStoreId` or `displayName` must be provided. Returns an error if multiple data stores share the same display name.
  final pulumi.Input<String>? displayName;
  /// The geographic location where the data store resides. The value can only be one of "global", "us" and "eu". Defaults to `global`.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataStoreArgs].
  /// [dataStoreId] The unique id of the data store. Exactly one of `dataStoreId` or `displayName` must be provided.
  /// [displayName] The display name of the data store. Exactly one of `dataStoreId` or `displayName` must be provided. Returns an error if multiple data stores share the same display name.
  /// [location] The geographic location where the data store resides. The value can only be one of "global", "us" and "eu". Defaults to `global`.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetDataStoreArgs({
    this.dataStoreId,
    this.displayName,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': ?dataStoreId,
      'displayName': ?displayName,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDataStoreArgs(
      dataStoreId: (() { final guardedValue = map['dataStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

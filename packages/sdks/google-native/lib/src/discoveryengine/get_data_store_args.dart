// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_data_store_args_doc}
/// Arguments for getDataStore.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_data_store_args_doc}
class GetDataStoreArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataStoreArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataStoreArgs({
    required pulumi.Output<String> collectionId,
    required pulumi.Output<String> dataStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDataStoreArgs(
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


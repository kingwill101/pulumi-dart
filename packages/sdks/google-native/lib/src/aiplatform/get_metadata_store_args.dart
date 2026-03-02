// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_metadata_store_args_doc}
/// Arguments for getMetadataStore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_metadata_store_args_doc}
class GetMetadataStoreArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataStoreArgs].
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetMetadataStoreArgs({
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetMetadataStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataStoreArgs(
      location: (map['location'] as String).input(),
      metadataStoreId: (map['metadataStoreId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


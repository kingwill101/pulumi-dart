// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_metadata_store_aiplatform_v1beta1_args_doc}
/// Arguments for getMetadataStore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_metadata_store_aiplatform_v1beta1_args_doc}
class GetMetadataStoreAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataStoreAiplatformV1beta1Args].
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetMetadataStoreAiplatformV1beta1Args({
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

  factory GetMetadataStoreAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMetadataStoreAiplatformV1beta1Args(
      location: (map['location'] as String).input(),
      metadataStoreId: (map['metadataStoreId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


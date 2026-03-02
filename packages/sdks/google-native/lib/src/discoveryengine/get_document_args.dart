// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_document_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_document_args_doc}
class GetDocumentArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentArgs].
  /// [branchId] Required.
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [documentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentArgs({
    required this.branchId,
    required this.collectionId,
    required this.dataStoreId,
    required this.documentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchId': branchId,
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'documentId': documentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      branchId: (map['branchId'] as String).input(),
      collectionId: (map['collectionId'] as String).input(),
      dataStoreId: (map['dataStoreId'] as String).input(),
      documentId: (map['documentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


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
      branchId: pulumi.Input.fromValue(map['branchId'] as String),
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      documentId: pulumi.Input.fromValue(map['documentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


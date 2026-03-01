// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_get_document_discoveryengine_v1beta_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_get_document_discoveryengine_v1beta_args_doc}
class GetDocumentDiscoveryengineV1betaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentDiscoveryengineV1betaArgs].
  /// [branchId] Required.
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [documentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentDiscoveryengineV1betaArgs({
    required pulumi.Output<String> branchId,
    required pulumi.Output<String> collectionId,
    required pulumi.Output<String> dataStoreId,
    required pulumi.Output<String> documentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      branchId = pulumi.Input.asInput<String>(branchId),
      collectionId = pulumi.Input.asInput<String>(collectionId),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      documentId = pulumi.Input.asInput<String>(documentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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

  factory GetDocumentDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentDiscoveryengineV1betaArgs(
      branchId: pulumi.Output.create<String>(map['branchId'] as String),
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      documentId: pulumi.Output.create<String>(map['documentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


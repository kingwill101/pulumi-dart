// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DocumentOccurrence represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentOccurrenceResponseContaineranalysisV1beta1 {
  /// Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  final pulumi.Input<String> createTime;
  /// A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  final pulumi.Input<String> creatorComment;
  /// Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  final pulumi.Input<List<String>> creators;
  /// A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  final pulumi.Input<String> documentComment;
  /// Identify any external SPDX documents referenced within this SPDX document
  final pulumi.Input<List<String>> externalDocumentRefs;
  /// A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  final pulumi.Input<String> licenseListVersion;
  /// Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  final pulumi.Input<String> namespace;
  /// Identify name of this document as designated by creator
  final pulumi.Input<String> title;

  /// Creates a new [DocumentOccurrenceResponseContaineranalysisV1beta1].
  /// [createTime] Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  /// [creatorComment] A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  /// [creators] Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  /// [documentComment] A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  /// [externalDocumentRefs] Identify any external SPDX documents referenced within this SPDX document
  /// [licenseListVersion] A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  /// [namespace] Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  /// [title] Identify name of this document as designated by creator
  DocumentOccurrenceResponseContaineranalysisV1beta1({
    required this.createTime,
    required this.creatorComment,
    required this.creators,
    required this.documentComment,
    required this.externalDocumentRefs,
    required this.licenseListVersion,
    required this.namespace,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'creatorComment': creatorComment,
      'creators': creators,
      'documentComment': documentComment,
      'externalDocumentRefs': externalDocumentRefs,
      'licenseListVersion': licenseListVersion,
      'namespace': namespace,
      'title': title,
    };
  }

  factory DocumentOccurrenceResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DocumentOccurrenceResponseContaineranalysisV1beta1(
      createTime: (map['createTime'] as String).input(),
      creatorComment: (map['creatorComment'] as String).input(),
      creators: ((map['creators'] as List).cast<String>()).input(),
      documentComment: (map['documentComment'] as String).input(),
      externalDocumentRefs: ((map['externalDocumentRefs'] as List).cast<String>()).input(),
      licenseListVersion: (map['licenseListVersion'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}


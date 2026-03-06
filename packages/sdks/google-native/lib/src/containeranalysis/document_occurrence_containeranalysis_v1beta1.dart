// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DocumentOccurrence represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentOccurrenceContaineranalysisV1beta1 {
  /// Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  final pulumi.Input<String>? createTime;
  /// A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  final pulumi.Input<String>? creatorComment;
  /// Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  final pulumi.Input<List<String>>? creators;
  /// A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  final pulumi.Input<String>? documentComment;
  /// Identify any external SPDX documents referenced within this SPDX document
  final pulumi.Input<List<String>>? externalDocumentRefs;
  /// Identify the current SPDX document which may be referenced in relationships by other files, packages internally and documents externally
  final pulumi.Input<String>? id;
  /// A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  final pulumi.Input<String>? licenseListVersion;
  /// Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  final pulumi.Input<String>? namespace;
  /// Identify name of this document as designated by creator
  final pulumi.Input<String>? title;

  /// Creates a new [DocumentOccurrenceContaineranalysisV1beta1].
  /// [createTime] Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  /// [creatorComment] A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  /// [creators] Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  /// [documentComment] A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  /// [externalDocumentRefs] Identify any external SPDX documents referenced within this SPDX document
  /// [id] Identify the current SPDX document which may be referenced in relationships by other files, packages internally and documents externally
  /// [licenseListVersion] A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  /// [namespace] Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  /// [title] Identify name of this document as designated by creator
  const DocumentOccurrenceContaineranalysisV1beta1({
    this.createTime,
    this.creatorComment,
    this.creators,
    this.documentComment,
    this.externalDocumentRefs,
    this.id,
    this.licenseListVersion,
    this.namespace,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creatorComment': ?creatorComment,
      'creators': ?creators,
      'documentComment': ?documentComment,
      'externalDocumentRefs': ?externalDocumentRefs,
      'id': ?id,
      'licenseListVersion': ?licenseListVersion,
      'namespace': ?namespace,
      'title': ?title,
    };
  }

  factory DocumentOccurrenceContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DocumentOccurrenceContaineranalysisV1beta1(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creatorComment: (() { final guardedValue = map['creatorComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creators: (() { final guardedValue = map['creators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      documentComment: (() { final guardedValue = map['documentComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalDocumentRefs: (() { final guardedValue = map['externalDocumentRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseListVersion: (() { final guardedValue = map['licenseListVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


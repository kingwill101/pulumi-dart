// ignore_for_file: unused_element, unnecessary_cast


/// DocumentNote represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNoteResponseContaineranalysisV1beta1 {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final String dataLicence;
  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final String spdxVersion;

  /// Creates a new [DocumentNoteResponseContaineranalysisV1beta1].
  /// [dataLicence] Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  /// [spdxVersion] Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  DocumentNoteResponseContaineranalysisV1beta1({
    required this.dataLicence,
    required this.spdxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLicence': dataLicence,
      'spdxVersion': spdxVersion,
    };
  }

  factory DocumentNoteResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DocumentNoteResponseContaineranalysisV1beta1(
      dataLicence: map['dataLicence'] as String,
      spdxVersion: map['spdxVersion'] as String,
    );
  }
}


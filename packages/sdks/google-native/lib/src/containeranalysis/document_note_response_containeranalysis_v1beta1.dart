// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DocumentNote represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNoteResponseContaineranalysisV1beta1 {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final pulumi.Input<String> dataLicence;

  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final pulumi.Input<String> spdxVersion;

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

  factory DocumentNoteResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DocumentNoteResponseContaineranalysisV1beta1(
      dataLicence: pulumi.Input.fromValue(map['dataLicence'] as String),
      spdxVersion: pulumi.Input.fromValue(map['spdxVersion'] as String),
    );
  }
}

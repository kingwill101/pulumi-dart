// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DocumentNote represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNoteContaineranalysisV1beta1 {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final pulumi.Input<String>? dataLicence;
  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final pulumi.Input<String>? spdxVersion;

  /// Creates a new [DocumentNoteContaineranalysisV1beta1].
  /// [dataLicence] Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  /// [spdxVersion] Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  const DocumentNoteContaineranalysisV1beta1({
    this.dataLicence,
    this.spdxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLicence': ?dataLicence,
      'spdxVersion': ?spdxVersion,
    };
  }

  factory DocumentNoteContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DocumentNoteContaineranalysisV1beta1(
      dataLicence: (() { final guardedValue = map['dataLicence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spdxVersion: (() { final guardedValue = map['spdxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


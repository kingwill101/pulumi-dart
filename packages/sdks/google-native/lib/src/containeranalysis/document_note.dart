// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DocumentNote represents an SPDX Document Creation Infromation section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNote {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final pulumi.Input<String>? dataLicence;
  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final pulumi.Input<String>? spdxVersion;

  /// Creates a new [DocumentNote].
  /// [dataLicence] Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  /// [spdxVersion] Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  const DocumentNote({
    this.dataLicence,
    this.spdxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLicence': ?dataLicence,
      'spdxVersion': ?spdxVersion,
    };
  }

  factory DocumentNote.fromMap(Map<String, dynamic> map) {
    return DocumentNote(
      dataLicence: (() { final guardedValue = map['dataLicence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spdxVersion: (() { final guardedValue = map['spdxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


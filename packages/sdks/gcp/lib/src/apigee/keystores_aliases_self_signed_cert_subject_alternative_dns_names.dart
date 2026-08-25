// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames {
  /// Subject Alternative Name
  final pulumi.Input<String?>? subjectAlternativeName;

  /// Creates a new [KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames].
  /// [subjectAlternativeName] Subject Alternative Name
  const KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames({
    this.subjectAlternativeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeName': ?subjectAlternativeName,
    };
  }

  factory KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames(
      subjectAlternativeName: (() { final guardedValue = map['subjectAlternativeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSmartcardHostCert {
  /// Specifies the file path for the host certificate linked to the smartcard.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesSmartcardHostCert].
  /// [file] Specifies the file path for the host certificate linked to the smartcard.
  const DomainDevicesSmartcardHostCert({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesSmartcardHostCert.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardHostCert(
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}


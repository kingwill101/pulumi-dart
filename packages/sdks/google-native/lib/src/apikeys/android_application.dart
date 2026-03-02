// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifier of an Android application for key use.
class AndroidApplication {
  /// The package name of the application.
  final pulumi.Input<String>? packageName;
  /// The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.
  final pulumi.Input<String>? sha1Fingerprint;

  /// Creates a new [AndroidApplication].
  /// [packageName] The package name of the application.
  /// [sha1Fingerprint] The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.
  AndroidApplication({
    this.packageName,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageName': ?packageName,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory AndroidApplication.fromMap(Map<String, dynamic> map) {
    return AndroidApplication(
      packageName: map['packageName'] == null ? null : (map['packageName']! as String).input(),
      sha1Fingerprint: map['sha1Fingerprint'] == null ? null : (map['sha1Fingerprint']! as String).input(),
    );
  }
}


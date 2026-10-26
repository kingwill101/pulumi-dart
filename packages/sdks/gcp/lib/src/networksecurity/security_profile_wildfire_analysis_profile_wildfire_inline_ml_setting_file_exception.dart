// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException {
  /// The file name associated with the partial hash.
  final pulumi.Input<String?>? filename;
  /// Machine learning partial hash of the file to exclude from WildFire Inline ML analysis.
  final pulumi.Input<String> partialHash;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException].
  /// [filename] The file name associated with the partial hash.
  /// [partialHash] Machine learning partial hash of the file to exclude from WildFire Inline ML analysis.
  const SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException({
    this.filename,
    required this.partialHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filename': ?filename,
      'partialHash': partialHash,
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException(
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partialHash: pulumi.Input.fromValue(map['partialHash'] as String),
    );
  }
}

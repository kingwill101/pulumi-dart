// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpCustomProfileContextAwarenessSkip {
  /// If the content type is a file, skip context analysis and return all matches.
  final pulumi.Input<bool?>? files;

  /// Creates a new [ZeroTrustDlpCustomProfileContextAwarenessSkip].
  /// [files] If the content type is a file, skip context analysis and return all matches.
  const ZeroTrustDlpCustomProfileContextAwarenessSkip({
    this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
    };
  }

  factory ZeroTrustDlpCustomProfileContextAwarenessSkip.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomProfileContextAwarenessSkip(
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

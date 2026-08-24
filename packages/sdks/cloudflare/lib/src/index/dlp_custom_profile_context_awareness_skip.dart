// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DlpCustomProfileContextAwarenessSkip {
  /// If the content type is a file, skip context analysis and return all matches.
  final pulumi.Input<bool?>? files;

  /// Creates a new [DlpCustomProfileContextAwarenessSkip].
  /// [files] If the content type is a file, skip context analysis and return all matches.
  const DlpCustomProfileContextAwarenessSkip({
    this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
    };
  }

  factory DlpCustomProfileContextAwarenessSkip.fromMap(Map<String, dynamic> map) {
    return DlpCustomProfileContextAwarenessSkip(
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

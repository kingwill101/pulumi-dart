// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpCustomProfileContextAwarenessSkip {
  /// If the content type is a file, skip context analysis and return all matches.
  final pulumi.Input<bool> files;

  /// Creates a new [GetZeroTrustDlpCustomProfileContextAwarenessSkip].
  /// [files] If the content type is a file, skip context analysis and return all matches.
  const GetZeroTrustDlpCustomProfileContextAwarenessSkip({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': files,
    };
  }

  factory GetZeroTrustDlpCustomProfileContextAwarenessSkip.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomProfileContextAwarenessSkip(
      files: pulumi.Input.fromValue(map['files'] as bool),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecBaseOutputDirectory {
  /// Cloud Storage folder URL to store the output.
  final pulumi.Input<String> outputUriPrefix;

  /// Creates a new [AiCustomJobJobSpecBaseOutputDirectory].
  /// [outputUriPrefix] Cloud Storage folder URL to store the output.
  const AiCustomJobJobSpecBaseOutputDirectory({
    required this.outputUriPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputUriPrefix': outputUriPrefix,
    };
  }

  factory AiCustomJobJobSpecBaseOutputDirectory.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecBaseOutputDirectory(
      outputUriPrefix: pulumi.Input.fromValue(map['outputUriPrefix'] as String),
    );
  }
}

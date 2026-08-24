// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnippetsMetadata {
  /// Name of the file that contains the main module of the snippet.
  final pulumi.Input<String> mainModule;

  /// Creates a new [SnippetsMetadata].
  /// [mainModule] Name of the file that contains the main module of the snippet.
  const SnippetsMetadata({
    required this.mainModule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainModule': mainModule,
    };
  }

  factory SnippetsMetadata.fromMap(Map<String, dynamic> map) {
    return SnippetsMetadata(
      mainModule: pulumi.Input.fromValue(map['mainModule'] as String),
    );
  }
}

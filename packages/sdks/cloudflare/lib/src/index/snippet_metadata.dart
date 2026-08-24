// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnippetMetadata {
  /// Specify the name of the file that contains the main module of the snippet.
  final pulumi.Input<String> mainModule;

  /// Creates a new [SnippetMetadata].
  /// [mainModule] Specify the name of the file that contains the main module of the snippet.
  const SnippetMetadata({
    required this.mainModule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainModule': mainModule,
    };
  }

  factory SnippetMetadata.fromMap(Map<String, dynamic> map) {
    return SnippetMetadata(
      mainModule: pulumi.Input.fromValue(map['mainModule'] as String),
    );
  }
}

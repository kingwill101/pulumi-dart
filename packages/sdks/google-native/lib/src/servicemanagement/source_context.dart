// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.
class SourceContext {
  /// The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  final pulumi.Input<String>? fileName;

  /// Creates a new [SourceContext].
  /// [fileName] The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  SourceContext({
    this.fileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
    };
  }

  factory SourceContext.fromMap(Map<String, dynamic> map) {
    return SourceContext(
      fileName: map['fileName'] == null ? null : (map['fileName'] as String).input(),
    );
  }
}


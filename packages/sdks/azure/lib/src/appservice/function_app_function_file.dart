// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppFunctionFile {
  /// The content of the file. Changing this forces a new resource to be created.
  final pulumi.Input<String> content;
  /// The filename of the file to be uploaded. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [FunctionAppFunctionFile].
  /// [content] The content of the file. Changing this forces a new resource to be created.
  /// [name] The filename of the file to be uploaded. Changing this forces a new resource to be created.
  const FunctionAppFunctionFile({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': name,
    };
  }

  factory FunctionAppFunctionFile.fromMap(Map<String, dynamic> map) {
    return FunctionAppFunctionFile(
      content: pulumi.Input.fromValue(map['content'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


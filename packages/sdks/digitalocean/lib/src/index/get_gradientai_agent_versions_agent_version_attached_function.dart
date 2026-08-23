// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentVersionsAgentVersionAttachedFunction {
  /// Description of the function
  final pulumi.Input<String> description;
  /// FaaS name of the function
  final pulumi.Input<String> faasName;
  /// FaaS namespace of the function
  final pulumi.Input<String> faasNamespace;
  /// Function is deleted
  final pulumi.Input<bool> isDeleted;
  /// Name of the function
  final pulumi.Input<String> name;

  /// Creates a new [GetGradientaiAgentVersionsAgentVersionAttachedFunction].
  /// [description] Description of the function
  /// [faasName] FaaS name of the function
  /// [faasNamespace] FaaS namespace of the function
  /// [isDeleted] Function is deleted
  /// [name] Name of the function
  const GetGradientaiAgentVersionsAgentVersionAttachedFunction({
    required this.description,
    required this.faasName,
    required this.faasNamespace,
    required this.isDeleted,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'faasName': faasName,
      'faasNamespace': faasNamespace,
      'isDeleted': isDeleted,
      'name': name,
    };
  }

  factory GetGradientaiAgentVersionsAgentVersionAttachedFunction.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsAgentVersionAttachedFunction(
      description: pulumi.Input.fromValue(map['description'] as String),
      faasName: pulumi.Input.fromValue(map['faasName'] as String),
      faasNamespace: pulumi.Input.fromValue(map['faasNamespace'] as String),
      isDeleted: pulumi.Input.fromValue(map['isDeleted'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

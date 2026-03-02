// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentVersionsAgentVersionAttachedFunction {
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

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedFunction].
  /// [description] Description of the function
  /// [faasName] FaaS name of the function
  /// [faasNamespace] FaaS namespace of the function
  /// [isDeleted] Function is deleted
  /// [name] Name of the function
  GetGenaiAgentVersionsAgentVersionAttachedFunction({
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

  factory GetGenaiAgentVersionsAgentVersionAttachedFunction.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedFunction(
      description: (map['description'] as String).input(),
      faasName: (map['faasName'] as String).input(),
      faasNamespace: (map['faasNamespace'] as String).input(),
      isDeleted: (map['isDeleted'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}


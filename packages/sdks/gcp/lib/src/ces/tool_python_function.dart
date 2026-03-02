// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolPythonFunction {
  /// (Output)
  /// The description of the Python function, parsed from the python code's
  /// docstring.
  final pulumi.Input<String>? description;
  /// The name of the Python function to execute. Must match a Python function
  /// name defined in the python code. Case sensitive. If the name is not
  /// provided, the first function defined in the python code will be used.
  final pulumi.Input<String>? name;
  /// The Python code to execute for the tool.
  final pulumi.Input<String>? pythonCode;

  /// Creates a new [ToolPythonFunction].
  /// [description] (Output)
  /// [name] The name of the Python function to execute. Must match a Python function
  /// [pythonCode] The Python code to execute for the tool.
  ToolPythonFunction({
    this.description,
    this.name,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'pythonCode': ?pythonCode,
    };
  }

  factory ToolPythonFunction.fromMap(Map<String, dynamic> map) {
    return ToolPythonFunction(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pythonCode: map['pythonCode'] == null ? null : (map['pythonCode'] as String).input(),
    );
  }
}


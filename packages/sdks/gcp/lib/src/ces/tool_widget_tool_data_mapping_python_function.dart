// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolWidgetToolDataMappingPythonFunction {
  /// (Output)
  /// The description of the Python function, parsed from the python code's
  /// docstring.
  final pulumi.Input<String>? description;
  /// Optional. The name of the Python function to execute. Must match a Python function
  /// name defined in the python code. Case sensitive. If the name is not
  /// provided, the first function defined in the python code will be used.
  final pulumi.Input<String>? name;
  /// Optional. The Python code to execute for the tool.
  final pulumi.Input<String>? pythonCode;

  /// Creates a new [ToolWidgetToolDataMappingPythonFunction].
  /// [description] (Output)
  /// [name] Optional. The name of the Python function to execute. Must match a Python function
  /// [pythonCode] Optional. The Python code to execute for the tool.
  const ToolWidgetToolDataMappingPythonFunction({
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

  factory ToolWidgetToolDataMappingPythonFunction.fromMap(Map<String, dynamic> map) {
    return ToolWidgetToolDataMappingPythonFunction(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonCode: (() { final guardedValue = map['pythonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

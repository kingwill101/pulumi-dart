// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_python_function_service_directory_config.dart';

class ToolPythonFunction {
  /// (Output)
  /// The description of the Python function, parsed from the python code's
  /// docstring.
  final pulumi.Input<String?>? description;
  /// Optional. The name of the Python function to execute. Must match a Python function
  /// name defined in the python code. Case sensitive. If the name is not
  /// provided, the first function defined in the python code will be used.
  final pulumi.Input<String?>? name;
  /// Optional. The Python code to execute for the tool.
  final pulumi.Input<String?>? pythonCode;
  /// Service Directory configuration for the tool.
  /// Structure is documented below.
  final pulumi.Input<ToolPythonFunctionServiceDirectoryConfig?>? serviceDirectoryConfig;

  /// Creates a new [ToolPythonFunction].
  /// [description] (Output)
  /// [name] Optional. The name of the Python function to execute. Must match a Python function
  /// [pythonCode] Optional. The Python code to execute for the tool.
  /// [serviceDirectoryConfig] Service Directory configuration for the tool.
  const ToolPythonFunction({
    this.description,
    this.name,
    this.pythonCode,
    this.serviceDirectoryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'pythonCode': ?pythonCode,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ToolPythonFunctionServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
    };
  }

  factory ToolPythonFunction.fromMap(Map<String, dynamic> map) {
    return ToolPythonFunction(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonCode: (() { final guardedValue = map['pythonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolPythonFunctionServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

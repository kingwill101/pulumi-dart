// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_widget_tool_data_mapping_python_function.dart';

class ToolWidgetToolDataMapping {
  /// Optional. A map of widget input parameter fields to the corresponding output fields of the source tool.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? fieldMappings;
  /// Optional. The mode of the data mapping.
  /// Possible values:
  /// MODE_UNSPECIFIED
  /// FIELD_MAPPING
  /// PYTHON_SCRIPT
  /// Possible values are: `MODE_UNSPECIFIED`, `FIELD_MAPPING`, `PYTHON_SCRIPT`.
  final pulumi.Input<String>? mode;
  /// Optional. Configuration for a Python function used to transform the source tool's
  /// output into the widget's input format.
  /// Structure is documented below.
  final pulumi.Input<ToolWidgetToolDataMappingPythonFunction>? pythonFunction;
  /// Optional. The resource name of the tool that provides the data for the widget (e.g., a search tool or a custom function).
  /// Format: projects/{project}/locations/{location}/agents/{agent}/tools/{tool}
  final pulumi.Input<String>? sourceToolName;

  /// Creates a new [ToolWidgetToolDataMapping].
  /// [fieldMappings] Optional. A map of widget input parameter fields to the corresponding output fields of the source tool.
  /// [mode] Optional. The mode of the data mapping.
  /// [pythonFunction] Optional. Configuration for a Python function used to transform the source tool's
  /// [sourceToolName] Optional. The resource name of the tool that provides the data for the widget (e.g., a search tool or a custom function).
  const ToolWidgetToolDataMapping({
    this.fieldMappings,
    this.mode,
    this.pythonFunction,
    this.sourceToolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMappings': ?fieldMappings,
      'mode': ?mode,
      'pythonFunction': ?pulumi.Input.mapOptionalInputValue<ToolWidgetToolDataMappingPythonFunction, Map<String, dynamic>>(pythonFunction, (value) => value.toMap()),
      'sourceToolName': ?sourceToolName,
    };
  }

  factory ToolWidgetToolDataMapping.fromMap(Map<String, dynamic> map) {
    return ToolWidgetToolDataMapping(
      fieldMappings: (() { final guardedValue = map['fieldMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonFunction: (() { final guardedValue = map['pythonFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolWidgetToolDataMappingPythonFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceToolName: (() { final guardedValue = map['sourceToolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

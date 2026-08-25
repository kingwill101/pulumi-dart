// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_widget_tool_data_mapping.dart';
import 'tool_widget_tool_parameters.dart';
import 'tool_widget_tool_text_response_config.dart';

class ToolWidgetTool {
  /// Optional. The mapping that defines how data from a source tool is mapped to the
  /// widget's input parameters.
  /// Structure is documented below.
  final pulumi.Input<ToolWidgetToolDataMapping?>? dataMapping;
  /// Optional. The description of the widget tool.
  final pulumi.Input<String?>? description;
  /// Required. The display name of the widget tool.
  final pulumi.Input<String> name;
  /// Optional. The input parameters of the widget tool. Represents a Schema object.
  /// Structure is documented below.
  final pulumi.Input<ToolWidgetToolParameters?>? parameters;
  /// Optional. Configuration for always-included text responses.
  /// Structure is documented below.
  final pulumi.Input<ToolWidgetToolTextResponseConfig?>? textResponseConfig;
  /// Optional. Configuration for rendering the widget. Represents a JSON object.
  final pulumi.Input<String?>? uiConfig;
  /// Optional. The type of the widget tool. If not specified, the default type will be CUSTOMIZED.
  /// Possible values:
  /// WIDGET_TYPE_UNSPECIFIED
  /// CUSTOM
  /// PRODUCT_CAROUSEL
  /// PRODUCT_DETAILS
  /// QUICK_ACTIONS
  /// PRODUCT_COMPARISON
  /// ADVANCED_PRODUCT_DETAILS
  /// SHORT_FORM
  /// OVERALL_SATISFACTION
  /// ORDER_SUMMARY
  /// APPOINTMENT_DETAILS
  /// APPOINTMENT_SCHEDULER
  /// CONTACT_FORM
  /// Possible values are: `WIDGET_TYPE_UNSPECIFIED`, `CUSTOM`, `PRODUCT_CAROUSEL`, `PRODUCT_DETAILS`, `QUICK_ACTIONS`, `PRODUCT_COMPARISON`, `ADVANCED_PRODUCT_DETAILS`, `SHORT_FORM`, `OVERALL_SATISFACTION`, `ORDER_SUMMARY`, `APPOINTMENT_DETAILS`, `APPOINTMENT_SCHEDULER`, `CONTACT_FORM`.
  final pulumi.Input<String?>? widgetType;

  /// Creates a new [ToolWidgetTool].
  /// [dataMapping] Optional. The mapping that defines how data from a source tool is mapped to the
  /// [description] Optional. The description of the widget tool.
  /// [name] Required. The display name of the widget tool.
  /// [parameters] Optional. The input parameters of the widget tool. Represents a Schema object.
  /// [textResponseConfig] Optional. Configuration for always-included text responses.
  /// [uiConfig] Optional. Configuration for rendering the widget. Represents a JSON object.
  /// [widgetType] Optional. The type of the widget tool. If not specified, the default type will be CUSTOMIZED.
  const ToolWidgetTool({
    this.dataMapping,
    this.description,
    required this.name,
    this.parameters,
    this.textResponseConfig,
    this.uiConfig,
    this.widgetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMapping': ?pulumi.Input.mapOptionalInputValue<ToolWidgetToolDataMapping, Map<String, dynamic>>(dataMapping, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<ToolWidgetToolParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'textResponseConfig': ?pulumi.Input.mapOptionalInputValue<ToolWidgetToolTextResponseConfig, Map<String, dynamic>>(textResponseConfig, (value) => value.toMap()),
      'uiConfig': ?uiConfig,
      'widgetType': ?widgetType,
    };
  }

  factory ToolWidgetTool.fromMap(Map<String, dynamic> map) {
    return ToolWidgetTool(
      dataMapping: (() { final guardedValue = map['dataMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolWidgetToolDataMapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolWidgetToolParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textResponseConfig: (() { final guardedValue = map['textResponseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolWidgetToolTextResponseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uiConfig: (() { final guardedValue = map['uiConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      widgetType: (() { final guardedValue = map['widgetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

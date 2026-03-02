// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_metadata_enum_option_response.dart';

/// Metadata for a specific parameter.
class ParameterMetadataResponse {
  /// Optional. Additional metadata for describing this parameter.
  final pulumi.Input<Map<String, String>> customMetadata;
  /// Optional. The default values will pre-populate the parameter with the given value from the proto. If default_value is left empty, the parameter will be populated with a default of the relevant type, e.g. false for a boolean.
  final pulumi.Input<String> defaultValue;
  /// Optional. The options shown when ENUM ParameterType is specified.
  final pulumi.Input<List<ParameterMetadataEnumOptionResponse>> enumOptions;
  /// Optional. Specifies a group name for this parameter to be rendered under. Group header text will be rendered exactly as specified in this field. Only considered when parent_name is NOT provided.
  final pulumi.Input<String> groupName;
  /// The help text to display for the parameter.
  final pulumi.Input<String> helpText;
  /// Optional. Whether the parameter is optional. Defaults to false.
  final pulumi.Input<bool> isOptional;
  /// The label to display for the parameter.
  final pulumi.Input<String> label;
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// Optional. The type of the parameter. Used for selecting input picker.
  final pulumi.Input<String> paramType;
  /// Optional. Specifies the name of the parent parameter. Used in conjunction with 'parent_trigger_values' to make this parameter conditional (will only be rendered conditionally). Should be mappable to a ParameterMetadata.name field.
  final pulumi.Input<String> parentName;
  /// Optional. The value(s) of the 'parent_name' parameter which will trigger this parameter to be shown. If left empty, ANY non-empty value in parent_name will trigger this parameter to be shown. Only considered when this parameter is conditional (when 'parent_name' has been provided).
  final pulumi.Input<List<String>> parentTriggerValues;
  /// Optional. Regexes that the parameter must match.
  final pulumi.Input<List<String>> regexes;

  /// Creates a new [ParameterMetadataResponse].
  /// [customMetadata] Optional. Additional metadata for describing this parameter.
  /// [defaultValue] Optional. The default values will pre-populate the parameter with the given value from the proto. If default_value is left empty, the parameter will be populated with a default of the relevant type, e.g. false for a boolean.
  /// [enumOptions] Optional. The options shown when ENUM ParameterType is specified.
  /// [groupName] Optional. Specifies a group name for this parameter to be rendered under. Group header text will be rendered exactly as specified in this field. Only considered when parent_name is NOT provided.
  /// [helpText] The help text to display for the parameter.
  /// [isOptional] Optional. Whether the parameter is optional. Defaults to false.
  /// [label] The label to display for the parameter.
  /// [name] The name of the parameter.
  /// [paramType] Optional. The type of the parameter. Used for selecting input picker.
  /// [parentName] Optional. Specifies the name of the parent parameter. Used in conjunction with 'parent_trigger_values' to make this parameter conditional (will only be rendered conditionally). Should be mappable to a ParameterMetadata.name field.
  /// [parentTriggerValues] Optional. The value(s) of the 'parent_name' parameter which will trigger this parameter to be shown. If left empty, ANY non-empty value in parent_name will trigger this parameter to be shown. Only considered when this parameter is conditional (when 'parent_name' has been provided).
  /// [regexes] Optional. Regexes that the parameter must match.
  ParameterMetadataResponse({
    required this.customMetadata,
    required this.defaultValue,
    required this.enumOptions,
    required this.groupName,
    required this.helpText,
    required this.isOptional,
    required this.label,
    required this.name,
    required this.paramType,
    required this.parentName,
    required this.parentTriggerValues,
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetadata': customMetadata,
      'defaultValue': defaultValue,
      'enumOptions': pulumi.Input.mapInputValue<List<ParameterMetadataEnumOptionResponse>, List<Map<String, dynamic>>>(enumOptions, (value) => pulumi.Input.encodeList<ParameterMetadataEnumOptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupName': groupName,
      'helpText': helpText,
      'isOptional': isOptional,
      'label': label,
      'name': name,
      'paramType': paramType,
      'parentName': parentName,
      'parentTriggerValues': parentTriggerValues,
      'regexes': regexes,
    };
  }

  factory ParameterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ParameterMetadataResponse(
      customMetadata: ((map['customMetadata'] as Map).cast<String, String>()).input(),
      defaultValue: (map['defaultValue'] as String).input(),
      enumOptions: (pulumi.Input.decodeList<ParameterMetadataEnumOptionResponse>(map['enumOptions'], (value) => ParameterMetadataEnumOptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupName: (map['groupName'] as String).input(),
      helpText: (map['helpText'] as String).input(),
      isOptional: (map['isOptional'] as bool).input(),
      label: (map['label'] as String).input(),
      name: (map['name'] as String).input(),
      paramType: (map['paramType'] as String).input(),
      parentName: (map['parentName'] as String).input(),
      parentTriggerValues: ((map['parentTriggerValues'] as List).cast<String>()).input(),
      regexes: ((map['regexes'] as List).cast<String>()).input(),
    );
  }
}


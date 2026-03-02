// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_param_spec_entry_config_input_display_option.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_config_parameter_name_option.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryConfig {
  /// A short phrase to describe what this parameter contains.
  final pulumi.Input<String>? descriptivePhrase;
  /// Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  final pulumi.Input<String>? helpText;
  /// Whether the default value is hidden in the UI.
  final pulumi.Input<bool>? hideDefaultValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption>? inputDisplayOption;
  /// Whether this field is hidden in the UI.
  final pulumi.Input<bool>? isHidden;
  /// A user-friendly label for the parameter.
  final pulumi.Input<String>? label;
  final pulumi.Input<EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption>? parameterNameOption;
  /// A user-friendly label for subSection under which the parameter will be displayed.
  final pulumi.Input<String>? subSectionLabel;
  /// Placeholder text which will appear in the UI input form for this parameter.
  final pulumi.Input<String>? uiPlaceholderText;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryConfig].
  /// [descriptivePhrase] A short phrase to describe what this parameter contains.
  /// [helpText] Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  /// [hideDefaultValue] Whether the default value is hidden in the UI.
  /// [inputDisplayOption] Optional.
  /// [isHidden] Whether this field is hidden in the UI.
  /// [label] A user-friendly label for the parameter.
  /// [parameterNameOption] Optional.
  /// [subSectionLabel] A user-friendly label for subSection under which the parameter will be displayed.
  /// [uiPlaceholderText] Placeholder text which will appear in the UI input form for this parameter.
  EnterpriseCrmEventbusProtoParamSpecEntryConfig({
    this.descriptivePhrase,
    this.helpText,
    this.hideDefaultValue,
    this.inputDisplayOption,
    this.isHidden,
    this.label,
    this.parameterNameOption,
    this.subSectionLabel,
    this.uiPlaceholderText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptivePhrase': ?descriptivePhrase,
      'helpText': ?helpText,
      'hideDefaultValue': ?hideDefaultValue,
      'inputDisplayOption': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption, String>(inputDisplayOption, (value) => value.value),
      'isHidden': ?isHidden,
      'label': ?label,
      'parameterNameOption': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption, String>(parameterNameOption, (value) => value.value),
      'subSectionLabel': ?subSectionLabel,
      'uiPlaceholderText': ?uiPlaceholderText,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryConfig(
      descriptivePhrase: map['descriptivePhrase'] == null ? null : (map['descriptivePhrase'] as String).input(),
      helpText: map['helpText'] == null ? null : (map['helpText'] as String).input(),
      hideDefaultValue: map['hideDefaultValue'] == null ? null : (map['hideDefaultValue'] as bool).input(),
      inputDisplayOption: map['inputDisplayOption'] == null ? null : (EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption.fromValue(map['inputDisplayOption'] as String)).input(),
      isHidden: map['isHidden'] == null ? null : (map['isHidden'] as bool).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      parameterNameOption: map['parameterNameOption'] == null ? null : (EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption.fromValue(map['parameterNameOption'] as String)).input(),
      subSectionLabel: map['subSectionLabel'] == null ? null : (map['subSectionLabel'] as String).input(),
      uiPlaceholderText: map['uiPlaceholderText'] == null ? null : (map['uiPlaceholderText'] as String).input(),
    );
  }
}


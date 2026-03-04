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
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption
  >?
  inputDisplayOption;

  /// Whether this field is hidden in the UI.
  final pulumi.Input<bool>? isHidden;

  /// A user-friendly label for the parameter.
  final pulumi.Input<String>? label;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption
  >?
  parameterNameOption;

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
      'inputDisplayOption':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption,
            String
          >(inputDisplayOption, (value) => value.wireValue),
      'isHidden': ?isHidden,
      'label': ?label,
      'parameterNameOption':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption,
            String
          >(parameterNameOption, (value) => value.wireValue),
      'subSectionLabel': ?subSectionLabel,
      'uiPlaceholderText': ?uiPlaceholderText,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParamSpecEntryConfig(
      descriptivePhrase: (() {
        final guardedValue = map['descriptivePhrase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      helpText: (() {
        final guardedValue = map['helpText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hideDefaultValue: (() {
        final guardedValue = map['hideDefaultValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inputDisplayOption: (() {
        final guardedValue = map['inputDisplayOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      isHidden: (() {
        final guardedValue = map['isHidden'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterNameOption: (() {
        final guardedValue = map['parameterNameOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      subSectionLabel: (() {
        final guardedValue = map['subSectionLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uiPlaceholderText: (() {
        final guardedValue = map['uiPlaceholderText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

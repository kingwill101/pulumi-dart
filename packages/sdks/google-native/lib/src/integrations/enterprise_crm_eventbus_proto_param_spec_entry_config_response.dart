// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse {
  /// A short phrase to describe what this parameter contains.
  final pulumi.Input<String> descriptivePhrase;
  /// Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  final pulumi.Input<String> helpText;
  /// Whether the default value is hidden in the UI.
  final pulumi.Input<bool> hideDefaultValue;
  final pulumi.Input<String> inputDisplayOption;
  /// Whether this field is hidden in the UI.
  final pulumi.Input<bool> isHidden;
  /// A user-friendly label for the parameter.
  final pulumi.Input<String> label;
  final pulumi.Input<String> parameterNameOption;
  /// A user-friendly label for subSection under which the parameter will be displayed.
  final pulumi.Input<String> subSectionLabel;
  /// Placeholder text which will appear in the UI input form for this parameter.
  final pulumi.Input<String> uiPlaceholderText;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse].
  /// [descriptivePhrase] A short phrase to describe what this parameter contains.
  /// [helpText] Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  /// [hideDefaultValue] Whether the default value is hidden in the UI.
  /// [inputDisplayOption] Required.
  /// [isHidden] Whether this field is hidden in the UI.
  /// [label] A user-friendly label for the parameter.
  /// [parameterNameOption] Required.
  /// [subSectionLabel] A user-friendly label for subSection under which the parameter will be displayed.
  /// [uiPlaceholderText] Placeholder text which will appear in the UI input form for this parameter.
  EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse({
    required this.descriptivePhrase,
    required this.helpText,
    required this.hideDefaultValue,
    required this.inputDisplayOption,
    required this.isHidden,
    required this.label,
    required this.parameterNameOption,
    required this.subSectionLabel,
    required this.uiPlaceholderText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptivePhrase': descriptivePhrase,
      'helpText': helpText,
      'hideDefaultValue': hideDefaultValue,
      'inputDisplayOption': inputDisplayOption,
      'isHidden': isHidden,
      'label': label,
      'parameterNameOption': parameterNameOption,
      'subSectionLabel': subSectionLabel,
      'uiPlaceholderText': uiPlaceholderText,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse(
      descriptivePhrase: (map['descriptivePhrase'] as String).input(),
      helpText: (map['helpText'] as String).input(),
      hideDefaultValue: (map['hideDefaultValue'] as bool).input(),
      inputDisplayOption: (map['inputDisplayOption'] as String).input(),
      isHidden: (map['isHidden'] as bool).input(),
      label: (map['label'] as String).input(),
      parameterNameOption: (map['parameterNameOption'] as String).input(),
      subSectionLabel: (map['subSectionLabel'] as String).input(),
      uiPlaceholderText: (map['uiPlaceholderText'] as String).input(),
    );
  }
}


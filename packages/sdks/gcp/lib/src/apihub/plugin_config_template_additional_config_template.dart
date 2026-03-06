// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_config_template_additional_config_template_enum_option.dart';
import 'plugin_config_template_additional_config_template_multi_select_option.dart';

class PluginConfigTemplateAdditionalConfigTemplate {
  /// Description.
  final pulumi.Input<String>? description;
  /// Enum options. To be populated if `ValueType` is `ENUM`.
  /// Structure is documented below.
  final pulumi.Input<List<PluginConfigTemplateAdditionalConfigTemplateEnumOption>>? enumOptions;
  /// ID of the config variable. Must be unique within the configuration.
  final pulumi.Input<String> id;
  /// Multi select options. To be populated if `ValueType` is `MULTI_SELECT`.
  /// Structure is documented below.
  final pulumi.Input<List<PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption>>? multiSelectOptions;
  /// Flag represents that this `ConfigVariable` must be provided for a
  /// PluginInstance.
  final pulumi.Input<bool>? required;
  /// Regular expression in RE2 syntax used for validating the `value` of a
  /// `ConfigVariable`.
  final pulumi.Input<String>? validationRegex;
  /// Type of the parameter: string, int, bool etc.
  /// Possible values:
  /// VALUE_TYPE_UNSPECIFIED
  /// STRING
  /// INT
  /// BOOL
  /// SECRET
  /// ENUM
  /// MULTI_SELECT
  /// MULTI_STRING
  /// MULTI_INT
  final pulumi.Input<String> valueType;

  /// Creates a new [PluginConfigTemplateAdditionalConfigTemplate].
  /// [description] Description.
  /// [enumOptions] Enum options. To be populated if `ValueType` is `ENUM`.
  /// [id] ID of the config variable. Must be unique within the configuration.
  /// [multiSelectOptions] Multi select options. To be populated if `ValueType` is `MULTI_SELECT`.
  /// [required] Flag represents that this `ConfigVariable` must be provided for a
  /// [validationRegex] Regular expression in RE2 syntax used for validating the `value` of a
  /// [valueType] Type of the parameter: string, int, bool etc.
  const PluginConfigTemplateAdditionalConfigTemplate({
    this.description,
    this.enumOptions,
    required this.id,
    this.multiSelectOptions,
    this.required,
    this.validationRegex,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enumOptions': ?pulumi.Input.mapOptionalInputValue<List<PluginConfigTemplateAdditionalConfigTemplateEnumOption>, List<Map<String, dynamic>>>(enumOptions, (value) => pulumi.Input.encodeList<PluginConfigTemplateAdditionalConfigTemplateEnumOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'multiSelectOptions': ?pulumi.Input.mapOptionalInputValue<List<PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption>, List<Map<String, dynamic>>>(multiSelectOptions, (value) => pulumi.Input.encodeList<PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'required': ?required,
      'validationRegex': ?validationRegex,
      'valueType': valueType,
    };
  }

  factory PluginConfigTemplateAdditionalConfigTemplate.fromMap(Map<String, dynamic> map) {
    return PluginConfigTemplateAdditionalConfigTemplate(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumOptions: (() { final guardedValue = map['enumOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginConfigTemplateAdditionalConfigTemplateEnumOption>(guardedValue, (value) => PluginConfigTemplateAdditionalConfigTemplateEnumOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      multiSelectOptions: (() { final guardedValue = map['multiSelectOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption>(guardedValue, (value) => PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationRegex: (() { final guardedValue = map['validationRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}


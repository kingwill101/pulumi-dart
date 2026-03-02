// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_default_value.dart';
import 'cloud_control_parameter_spec_sub_parameter.dart';
import 'cloud_control_parameter_spec_substitution_rule.dart';
import 'cloud_control_parameter_spec_validation.dart';

class CloudControlParameterSpec {
  /// Possible parameter value types.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecDefaultValue>? defaultValue;
  /// The description of the parameter. The maximum length is 2000 characters.
  final pulumi.Input<String>? description;
  /// The display name of the parameter. The maximum length is 200 characters.
  final pulumi.Input<String>? displayName;
  /// if the parameter is required
  final pulumi.Input<bool> isRequired;
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// The parameter spec of the cloud control.
  /// Structure is documented below.
  final pulumi.Input<List<CloudControlParameterSpecSubParameter>>? subParameters;
  /// List of parameter substitutions.
  /// Structure is documented below.
  final pulumi.Input<List<CloudControlParameterSpecSubstitutionRule>>? substitutionRules;
  /// Validation of the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecValidation>? validation;
  /// Parameter value type.
  /// Possible values:
  /// STRING
  /// BOOLEAN
  /// STRINGLIST
  /// NUMBER
  /// ONEOF
  final pulumi.Input<String> valueType;

  /// Creates a new [CloudControlParameterSpec].
  /// [defaultValue] Possible parameter value types.
  /// [description] The description of the parameter. The maximum length is 2000 characters.
  /// [displayName] The display name of the parameter. The maximum length is 200 characters.
  /// [isRequired] if the parameter is required
  /// [name] The name of the parameter.
  /// [subParameters] The parameter spec of the cloud control.
  /// [substitutionRules] List of parameter substitutions.
  /// [validation] Validation of the parameter.
  /// [valueType] Parameter value type.
  CloudControlParameterSpec({
    this.defaultValue,
    this.description,
    this.displayName,
    required this.isRequired,
    required this.name,
    this.subParameters,
    this.substitutionRules,
    this.validation,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecDefaultValue, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isRequired': isRequired,
      'name': name,
      'subParameters': ?pulumi.Input.mapOptionalInputValue<List<CloudControlParameterSpecSubParameter>, List<Map<String, dynamic>>>(subParameters, (value) => pulumi.Input.encodeList<CloudControlParameterSpecSubParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substitutionRules': ?pulumi.Input.mapOptionalInputValue<List<CloudControlParameterSpecSubstitutionRule>, List<Map<String, dynamic>>>(substitutionRules, (value) => pulumi.Input.encodeList<CloudControlParameterSpecSubstitutionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validation': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
      'valueType': valueType,
    };
  }

  factory CloudControlParameterSpec.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpec(
      defaultValue: map['defaultValue'] == null ? null : (CloudControlParameterSpecDefaultValue.fromMap((map['defaultValue'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      isRequired: (map['isRequired'] as bool).input(),
      name: (map['name'] as String).input(),
      subParameters: map['subParameters'] == null ? null : (pulumi.Input.decodeList<CloudControlParameterSpecSubParameter>(map['subParameters'], (value) => CloudControlParameterSpecSubParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      substitutionRules: map['substitutionRules'] == null ? null : (pulumi.Input.decodeList<CloudControlParameterSpecSubstitutionRule>(map['substitutionRules'], (value) => CloudControlParameterSpecSubstitutionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validation: map['validation'] == null ? null : (CloudControlParameterSpecValidation.fromMap((map['validation'] as Map).cast<String, dynamic>())).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}


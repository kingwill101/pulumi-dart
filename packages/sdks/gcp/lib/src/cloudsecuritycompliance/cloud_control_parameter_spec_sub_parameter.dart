// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_default_value.dart';
import 'cloud_control_parameter_spec_sub_parameter_substitution_rule.dart';
import 'cloud_control_parameter_spec_sub_parameter_validation.dart';

class CloudControlParameterSpecSubParameter {
  /// Possible parameter value types.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterDefaultValue>? defaultValue;
  /// The description of the parameter. The maximum length is 2000 characters.
  final pulumi.Input<String>? description;
  /// The display name of the parameter. The maximum length is 200 characters.
  final pulumi.Input<String>? displayName;
  /// if the parameter is required
  final pulumi.Input<bool> isRequired;
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// List of parameter substitutions.
  /// Structure is documented below.
  final pulumi.Input<List<CloudControlParameterSpecSubParameterSubstitutionRule>>? substitutionRules;
  /// Validation of the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidation>? validation;
  /// Parameter value type.
  /// Possible values:
  /// STRING
  /// BOOLEAN
  /// STRINGLIST
  /// NUMBER
  /// ONEOF
  final pulumi.Input<String> valueType;

  /// Creates a new [CloudControlParameterSpecSubParameter].
  /// [defaultValue] Possible parameter value types.
  /// [description] The description of the parameter. The maximum length is 2000 characters.
  /// [displayName] The display name of the parameter. The maximum length is 200 characters.
  /// [isRequired] if the parameter is required
  /// [name] The name of the parameter.
  /// [substitutionRules] List of parameter substitutions.
  /// [validation] Validation of the parameter.
  /// [valueType] Parameter value type.
  CloudControlParameterSpecSubParameter({
    this.defaultValue,
    this.description,
    this.displayName,
    required this.isRequired,
    required this.name,
    this.substitutionRules,
    this.validation,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterDefaultValue, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isRequired': isRequired,
      'name': name,
      'substitutionRules': ?pulumi.Input.mapOptionalInputValue<List<CloudControlParameterSpecSubParameterSubstitutionRule>, List<Map<String, dynamic>>>(substitutionRules, (value) => pulumi.Input.encodeList<CloudControlParameterSpecSubParameterSubstitutionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validation': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
      'valueType': valueType,
    };
  }

  factory CloudControlParameterSpecSubParameter.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameter(
      defaultValue: map['defaultValue'] == null ? null : (CloudControlParameterSpecSubParameterDefaultValue.fromMap((map['defaultValue']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      isRequired: (map['isRequired'] as bool).input(),
      name: (map['name'] as String).input(),
      substitutionRules: map['substitutionRules'] == null ? null : (pulumi.Input.decodeList<CloudControlParameterSpecSubParameterSubstitutionRule>(map['substitutionRules']!, (value) => CloudControlParameterSpecSubParameterSubstitutionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validation: map['validation'] == null ? null : (CloudControlParameterSpecSubParameterValidation.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}


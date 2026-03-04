// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
/// The set of arguments for RegionalParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
class RegionalParameterVersionArgs {
  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  final pulumi.Input<bool>? disabled;

  /// Parameter Manager Regional Parameter resource.
  final pulumi.Input<String> parameter;

  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> parameterData;

  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  final pulumi.Input<String> parameterVersionId;

  /// Creates a new [RegionalParameterVersionArgs].
  /// [disabled] The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  /// [parameter] Parameter Manager Regional Parameter resource.
  /// [parameterData] The Regional Parameter data.
  /// [parameterVersionId] Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  RegionalParameterVersionArgs({
    this.disabled,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
    };
  }

  factory RegionalParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegionalParameterVersionArgs(
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      parameterData: pulumi.Input.fromValue(map['parameterData'] as String),
      parameterVersionId: pulumi.Input.fromValue(
        map['parameterVersionId'] as String,
      ),
    );
  }
}

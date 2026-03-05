// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_parameter_version_parameter_version_args_doc}
/// The set of arguments for ParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_parameter_version_parameter_version_args_doc}
class ParameterVersionArgs {
  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  final pulumi.Input<bool>? disabled;
  /// Parameter Manager Parameter resource.
  final pulumi.Input<String> parameter;
  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> parameterData;
  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  final pulumi.Input<String> parameterVersionId;

  /// Creates a new [ParameterVersionArgs].
  /// [disabled] The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  /// [parameter] Parameter Manager Parameter resource.
  /// [parameterData] The Parameter data.
  /// [parameterVersionId] Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  ParameterVersionArgs({
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

  factory ParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return ParameterVersionArgs(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      parameterData: pulumi.Input.fromValue(map['parameterData'] as String),
      parameterVersionId: pulumi.Input.fromValue(map['parameterVersionId'] as String),
    );
  }
}


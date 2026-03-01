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
    pulumi.Output<bool>? disabled,
    required pulumi.Output<String> parameter,
    required pulumi.Output<String> parameterData,
    required pulumi.Output<String> parameterVersionId,
  }) :
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      parameter = pulumi.Input.asInput<String>(parameter),
      parameterData = pulumi.Input.asInput<String>(parameterData),
      parameterVersionId = pulumi.Input.asInput<String>(parameterVersionId);

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
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      parameter: pulumi.Output.create<String>(map['parameter'] as String),
      parameterData: pulumi.Output.create<String>(map['parameterData'] as String),
      parameterVersionId: pulumi.Output.create<String>(map['parameterVersionId'] as String),
    );
  }
}


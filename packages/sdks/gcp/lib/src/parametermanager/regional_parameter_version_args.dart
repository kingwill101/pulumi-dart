// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
/// The set of arguments for RegionalParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
class RegionalParameterVersionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  final pulumi.Input<bool?>? disabled;
  /// Parameter Manager Regional Parameter resource.
  final pulumi.Input<String> parameter;
  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> parameterData;
  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  final pulumi.Input<String> parameterVersionId;

  /// Creates a new [RegionalParameterVersionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  /// [parameter] Parameter Manager Regional Parameter resource.
  /// [parameterData] The Regional Parameter data.
  /// [parameterVersionId] Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  const RegionalParameterVersionArgs({
    this.deletionPolicy,
    this.disabled,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
    };
  }

  factory RegionalParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegionalParameterVersionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      parameterData: pulumi.Input.fromValue(map['parameterData'] as String),
      parameterVersionId: pulumi.Input.fromValue(map['parameterVersionId'] as String),
    );
  }
}

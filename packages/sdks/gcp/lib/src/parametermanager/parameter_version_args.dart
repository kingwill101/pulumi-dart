// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_parameter_version_parameter_version_args_doc}
/// The set of arguments for ParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_parameter_version_parameter_version_args_doc}
class ParameterVersionArgs {
  /// The integrity checksum of the payload. If provided, the server will verify that the checksum matches the payload. If not provided, the server will generate the checksum.
  final pulumi.Input<String?>? dataCrc32c;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  final pulumi.Input<bool?>? disabled;
  /// Parameter Manager Parameter resource.
  final pulumi.Input<String> parameter;
  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> parameterData;
  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  final pulumi.Input<String> parameterVersionId;

  /// Creates a new [ParameterVersionArgs].
  /// [dataCrc32c] The integrity checksum of the payload. If provided, the server will verify that the checksum matches the payload. If not provided, the server will generate the checksum.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  /// [parameter] Parameter Manager Parameter resource.
  /// [parameterData] The Parameter data.
  /// [parameterVersionId] Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  const ParameterVersionArgs({
    this.dataCrc32c,
    this.deletionPolicy,
    this.disabled,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCrc32c': ?dataCrc32c,
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
    };
  }

  factory ParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return ParameterVersionArgs(
      dataCrc32c: (() { final guardedValue = map['dataCrc32c']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      parameterData: pulumi.Input.fromValue(map['parameterData'] as String),
      parameterVersionId: pulumi.Input.fromValue(map['parameterVersionId'] as String),
    );
  }
}

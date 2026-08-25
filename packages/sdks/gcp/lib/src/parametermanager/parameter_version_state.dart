// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ParameterVersion resources.
class ParameterVersionState {
  /// The time at which the Parameter Version was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  final pulumi.Input<bool?>? disabled;
  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final pulumi.Input<String?>? kmsKeyVersion;
  /// The resource name of the Parameter Version. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final pulumi.Input<String?>? name;
  /// Parameter Manager Parameter resource.
  final pulumi.Input<String?>? parameter;
  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? parameterData;
  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  final pulumi.Input<String?>? parameterVersionId;
  /// The time at which the Parameter Version was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ParameterVersionState].
  /// [createTime] The time at which the Parameter Version was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  /// [kmsKeyVersion] The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format
  /// [name] The resource name of the Parameter Version. Format:
  /// [parameter] Parameter Manager Parameter resource.
  /// [parameterData] The Parameter data.
  /// [parameterVersionId] Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  /// [updateTime] The time at which the Parameter Version was updated.
  const ParameterVersionState({
    this.createTime,
    this.deletionPolicy,
    this.disabled,
    this.kmsKeyVersion,
    this.name,
    this.parameter,
    this.parameterData,
    this.parameterVersionId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'kmsKeyVersion': ?kmsKeyVersion,
      'name': ?name,
      'parameter': ?parameter,
      'parameterData': ?parameterData,
      'parameterVersionId': ?parameterVersionId,
      'updateTime': ?updateTime,
    };
  }

  factory ParameterVersionState.fromMap(Map<String, dynamic> map) {
    return ParameterVersionState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyVersion: (() { final guardedValue = map['kmsKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterData: (() { final guardedValue = map['parameterData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterVersionId: (() { final guardedValue = map['parameterVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

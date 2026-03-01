// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ParameterVersion resources.
class ParameterVersionState {
  /// The time at which the Parameter Version was created.
  final pulumi.Input<String>? createTime;
  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  final pulumi.Input<bool>? disabled;
  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final pulumi.Input<String>? kmsKeyVersion;
  /// The resource name of the Parameter Version. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final pulumi.Input<String>? name;
  /// Parameter Manager Parameter resource.
  final pulumi.Input<String>? parameter;
  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? parameterData;
  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  final pulumi.Input<String>? parameterVersionId;
  /// The time at which the Parameter Version was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ParameterVersionState].
  /// [createTime] The time at which the Parameter Version was created.
  /// [disabled] The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  /// [kmsKeyVersion] The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format
  /// [name] The resource name of the Parameter Version. Format:
  /// [parameter] Parameter Manager Parameter resource.
  /// [parameterData] The Parameter data.
  /// [parameterVersionId] Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  /// [updateTime] The time at which the Parameter Version was updated.
  ParameterVersionState({
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? kmsKeyVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parameter,
    pulumi.Output<String>? parameterData,
    pulumi.Output<String>? parameterVersionId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      kmsKeyVersion = pulumi.Input.asOptionalInput<String>(kmsKeyVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameter = pulumi.Input.asOptionalInput<String>(parameter),
      parameterData = pulumi.Input.asOptionalInput<String>(parameterData),
      parameterVersionId = pulumi.Input.asOptionalInput<String>(parameterVersionId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      kmsKeyVersion: map['kmsKeyVersion'] == null ? null : pulumi.Output.create<String>(map['kmsKeyVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameter: map['parameter'] == null ? null : pulumi.Output.create<String>(map['parameter'] as String),
      parameterData: map['parameterData'] == null ? null : pulumi.Output.create<String>(map['parameterData'] as String),
      parameterVersionId: map['parameterVersionId'] == null ? null : pulumi.Output.create<String>(map['parameterVersionId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


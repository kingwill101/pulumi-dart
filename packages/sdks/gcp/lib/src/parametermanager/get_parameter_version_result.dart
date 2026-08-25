// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParameterVersion.
class GetParameterVersionResult {
  /// The time at which the Parameter Version was created.
  final String? createTime;
  /// The current state of the Parameter Version.
  final bool? disabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final String? kmsKeyVersion;
  /// The resource name of the ParameterVersion. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final String? name;
  final String? parameter;
  /// The parameter data.
  final String? parameterData;
  final String? parameterVersionId;
  final String? project;
  /// The time at which the Parameter Version was last updated.
  final String? updateTime;

  /// Creates a new [GetParameterVersionResult].
  /// [createTime] The time at which the Parameter Version was created.
  /// [disabled] The current state of the Parameter Version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyVersion] The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  /// [name] The resource name of the ParameterVersion. Format:
  /// [parameter] Optional.
  /// [parameterData] The parameter data.
  /// [parameterVersionId] Optional.
  /// [project] Optional.
  /// [updateTime] The time at which the Parameter Version was last updated.
  const GetParameterVersionResult({
    this.createTime,
    this.disabled,
    this.id,
    this.kmsKeyVersion,
    this.name,
    this.parameter,
    this.parameterData,
    this.parameterVersionId,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'disabled': ?disabled,
      'id': ?id,
      'kmsKeyVersion': ?kmsKeyVersion,
      'name': ?name,
      'parameter': ?parameter,
      'parameterData': ?parameterData,
      'parameterVersionId': ?parameterVersionId,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory GetParameterVersionResult.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyVersion: (() { final guardedValue = map['kmsKeyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterData: (() { final guardedValue = map['parameterData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterVersionId: (() { final guardedValue = map['parameterVersionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

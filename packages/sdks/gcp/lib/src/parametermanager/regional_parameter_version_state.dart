// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionalParameterVersion resources.
class RegionalParameterVersionState {
  /// The time at which the Regional Parameter Version was created.
  final pulumi.Input<String>? createTime;
  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  final pulumi.Input<bool>? disabled;
  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final pulumi.Input<String>? kmsKeyVersion;
  /// Location of Parameter Manager Regional parameter resource.
  final pulumi.Input<String>? location;
  /// The resource name of the Regional Parameter Version. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final pulumi.Input<String>? name;
  /// Parameter Manager Regional Parameter resource.
  final pulumi.Input<String>? parameter;
  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? parameterData;
  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  final pulumi.Input<String>? parameterVersionId;
  /// The time at which the Regional Parameter Version was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RegionalParameterVersionState].
  /// [createTime] The time at which the Regional Parameter Version was created.
  /// [disabled] The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  /// [kmsKeyVersion] The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional parameter version payload. Format
  /// [location] Location of Parameter Manager Regional parameter resource.
  /// [name] The resource name of the Regional Parameter Version. Format:
  /// [parameter] Parameter Manager Regional Parameter resource.
  /// [parameterData] The Regional Parameter data.
  /// [parameterVersionId] Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  /// [updateTime] The time at which the Regional Parameter Version was updated.
  const RegionalParameterVersionState({
    this.createTime,
    this.disabled,
    this.kmsKeyVersion,
    this.location,
    this.name,
    this.parameter,
    this.parameterData,
    this.parameterVersionId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'disabled': ?disabled,
      'kmsKeyVersion': ?kmsKeyVersion,
      'location': ?location,
      'name': ?name,
      'parameter': ?parameter,
      'parameterData': ?parameterData,
      'parameterVersionId': ?parameterVersionId,
      'updateTime': ?updateTime,
    };
  }

  factory RegionalParameterVersionState.fromMap(Map<String, dynamic> map) {
    return RegionalParameterVersionState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyVersion: (() { final guardedValue = map['kmsKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterData: (() { final guardedValue = map['parameterData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterVersionId: (() { final guardedValue = map['parameterVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


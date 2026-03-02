// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretVersion resources.
class SecretVersionState {
  /// The time at which the Secret was created.
  final pulumi.Input<String>? createTime;
  /// The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;
  /// The time at which the Secret was destroyed. Only present if state is DESTROYED.
  final pulumi.Input<String>? destroyTime;
  /// The current state of the SecretVersion.
  final pulumi.Input<bool>? enabled;
  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final pulumi.Input<bool>? isSecretDataBase64;
  /// The resource name of the SecretVersion. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it is not provided,
  /// the provider project is used
  final pulumi.Input<String>? project;
  /// Secret Manager secret resource
  final pulumi.Input<String>? secret;
  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secretData;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The secret data. Must be no larger than 64KiB. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `secret_data` or `secret_data_wo` can only be set.
  final pulumi.Input<String>? secretDataWo;
  /// Triggers update of secret data write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<int>? secretDataWoVersion;
  /// The version of the Secret.
  final pulumi.Input<String>? version;

  /// Creates a new [SecretVersionState].
  /// [createTime] The time at which the Secret was created.
  /// [deletionPolicy] The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// [destroyTime] The time at which the Secret was destroyed. Only present if state is DESTROYED.
  /// [enabled] The current state of the SecretVersion.
  /// [isSecretDataBase64] If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  /// [name] The resource name of the SecretVersion. Format:
  /// [project] The ID of the project in which the resource belongs. If it is not provided,
  /// [secret] Secret Manager secret resource
  /// [secretData] The secret data. Must be no larger than 64KiB.
  /// [secretDataWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [secretDataWoVersion] Triggers update of secret data write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [version] The version of the Secret.
  SecretVersionState({
    this.createTime,
    this.deletionPolicy,
    this.destroyTime,
    this.enabled,
    this.isSecretDataBase64,
    this.name,
    this.project,
    this.secret,
    this.secretData,
    this.secretDataWo,
    this.secretDataWoVersion,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'destroyTime': ?destroyTime,
      'enabled': ?enabled,
      'isSecretDataBase64': ?isSecretDataBase64,
      'name': ?name,
      'project': ?project,
      'secret': ?secret,
      'secretData': ?secretData,
      'secretDataWo': ?secretDataWo,
      'secretDataWoVersion': ?secretDataWoVersion,
      'version': ?version,
    };
  }

  factory SecretVersionState.fromMap(Map<String, dynamic> map) {
    return SecretVersionState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy'] as String).input(),
      destroyTime: map['destroyTime'] == null ? null : (map['destroyTime'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      isSecretDataBase64: map['isSecretDataBase64'] == null ? null : (map['isSecretDataBase64'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
      secretData: map['secretData'] == null ? null : (map['secretData'] as String).input(),
      secretDataWo: map['secretDataWo'] == null ? null : (map['secretDataWo'] as String).input(),
      secretDataWoVersion: map['secretDataWoVersion'] == null ? null : (map['secretDataWoVersion'] as int).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}


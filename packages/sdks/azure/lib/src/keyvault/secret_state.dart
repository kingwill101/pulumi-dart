// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Secret resources.
class SecretState {
  /// Specifies the content type for the Key Vault Secret.
  final pulumi.Input<String>? contentType;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  final pulumi.Input<String>? expirationDate;
  /// The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;
  /// Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  final pulumi.Input<String>? notBeforeDate;
  /// The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  final pulumi.Input<String>? resourceId;
  /// The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  final pulumi.Input<String>? resourceVersionlessId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret.
  final pulumi.Input<String>? value;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret.
  ///
  /// &gt; **Note:** One of `value` or `valueWo` must be specified.
  final pulumi.Input<String>? valueWo;
  /// An integer value used to trigger an update for `valueWo`. This property should be incremented when updating `valueWo`.
  ///
  /// &gt; **Note:** Key Vault strips newlines. To preserve newlines in multi-line secrets try replacing them with `\n` or by base 64 encoding them with `replace(file("mySecretFile"), "/\n/", "\n")` or `base64encode(file("mySecretFile"))`, respectively.
  final pulumi.Input<int>? valueWoVersion;
  /// The current version of the Key Vault Secret.
  final pulumi.Input<String>? version;
  /// The Base ID of the Key Vault Secret.
  final pulumi.Input<String>? versionlessId;

  /// Creates a new [SecretState].
  /// [contentType] Specifies the content type for the Key Vault Secret.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [keyVaultId] The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [resourceId] The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceVersionlessId] The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  /// [tags] A mapping of tags to assign to the resource.
  /// [value] Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret.
  /// [valueWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [valueWoVersion] An integer value used to trigger an update for `valueWo`. This property should be incremented when updating `valueWo`.
  /// [version] The current version of the Key Vault Secret.
  /// [versionlessId] The Base ID of the Key Vault Secret.
  const SecretState({
    this.contentType,
    this.expirationDate,
    this.keyVaultId,
    this.name,
    this.notBeforeDate,
    this.resourceId,
    this.resourceVersionlessId,
    this.tags,
    this.value,
    this.valueWo,
    this.valueWoVersion,
    this.version,
    this.versionlessId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'expirationDate': ?expirationDate,
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'resourceId': ?resourceId,
      'resourceVersionlessId': ?resourceVersionlessId,
      'tags': ?tags,
      'value': ?value,
      'valueWo': ?valueWo,
      'valueWoVersion': ?valueWoVersion,
      'version': ?version,
      'versionlessId': ?versionlessId,
    };
  }

  factory SecretState.fromMap(Map<String, dynamic> map) {
    return SecretState(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBeforeDate: (() { final guardedValue = map['notBeforeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceVersionlessId: (() { final guardedValue = map['resourceVersionlessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueWo: (() { final guardedValue = map['valueWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueWoVersion: (() { final guardedValue = map['valueWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionlessId: (() { final guardedValue = map['versionlessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

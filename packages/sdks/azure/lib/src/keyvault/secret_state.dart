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
  /// > **Note:** One of `value` or `value_wo` must be specified.
  final pulumi.Input<String>? valueWo;
  /// An integer value used to trigger an update for `value_wo`. This property should be incremented when updating `value_wo`.
  ///
  /// > **Note:** Key Vault strips newlines. To preserve newlines in multi-line secrets try replacing them with `\n` or by base 64 encoding them with `replace(file("my_secret_file"), "/\n/", "\n")` or `base64encode(file("my_secret_file"))`, respectively.
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
  /// [valueWoVersion] An integer value used to trigger an update for `value_wo`. This property should be incremented when updating `value_wo`.
  /// [version] The current version of the Key Vault Secret.
  /// [versionlessId] The Base ID of the Key Vault Secret.
  SecretState({
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
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notBeforeDate: map['notBeforeDate'] == null ? null : (map['notBeforeDate']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceVersionlessId: map['resourceVersionlessId'] == null ? null : (map['resourceVersionlessId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      valueWo: map['valueWo'] == null ? null : (map['valueWo']! as String).input(),
      valueWoVersion: map['valueWoVersion'] == null ? null : (map['valueWoVersion']! as int).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      versionlessId: map['versionlessId'] == null ? null : (map['versionlessId']! as String).input(),
    );
  }
}


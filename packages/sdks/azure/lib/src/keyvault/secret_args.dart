// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_secret_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_keyvault_secret_secret_args_doc}
class SecretArgs {
  /// Specifies the content type for the Key Vault Secret.
  final pulumi.Input<String>? contentType;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  final pulumi.Input<String>? expirationDate;
  /// The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  final pulumi.Input<String>? notBeforeDate;
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

  /// Creates a new [SecretArgs].
  /// [contentType] Specifies the content type for the Key Vault Secret.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [keyVaultId] The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [tags] A mapping of tags to assign to the resource.
  /// [value] Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret.
  /// [valueWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [valueWoVersion] An integer value used to trigger an update for `value_wo`. This property should be incremented when updating `value_wo`.
  SecretArgs({
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? expirationDate,
    required pulumi.Output<String> keyVaultId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notBeforeDate,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? value,
    pulumi.Output<String>? valueWo,
    pulumi.Output<int>? valueWoVersion,
  }) :
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notBeforeDate = pulumi.Input.asOptionalInput<String>(notBeforeDate),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      value = pulumi.Input.asOptionalInput<String>(value),
      valueWo = pulumi.Input.asOptionalInput<String>(valueWo),
      valueWoVersion = pulumi.Input.asOptionalInput<int>(valueWoVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'expirationDate': ?expirationDate,
      'keyVaultId': keyVaultId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'tags': ?tags,
      'value': ?value,
      'valueWo': ?valueWo,
      'valueWoVersion': ?valueWoVersion,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      keyVaultId: pulumi.Output.create<String>(map['keyVaultId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notBeforeDate: map['notBeforeDate'] == null ? null : pulumi.Output.create<String>(map['notBeforeDate'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      valueWo: map['valueWo'] == null ? null : pulumi.Output.create<String>(map['valueWo'] as String),
      valueWoVersion: map['valueWoVersion'] == null ? null : pulumi.Output.create<int>(map['valueWoVersion'] as int),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_managed_storage_account_sas_token_definition_managed_storage_account_sas_token_definition_args_doc}
/// The set of arguments for ManagedStorageAccountSasTokenDefinition.
/// {@endtemplate}
/// {@macro pulumi_keyvault_managed_storage_account_sas_token_definition_managed_storage_account_sas_token_definition_args_doc}
class ManagedStorageAccountSasTokenDefinitionArgs {
  /// The ID of the Managed Storage Account.
  final pulumi.Input<String> managedStorageAccountId;
  /// The name which should be used for this SAS Definition.
  final pulumi.Input<String>? name;
  /// The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period.
  final pulumi.Input<String> sasTemplateUri;
  /// The type of SAS token the SAS definition will create. Possible values are `account` and `service`.
  final pulumi.Input<String> sasType;
  /// A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String> validityPeriod;

  /// Creates a new [ManagedStorageAccountSasTokenDefinitionArgs].
  /// [managedStorageAccountId] The ID of the Managed Storage Account.
  /// [name] The name which should be used for this SAS Definition.
  /// [sasTemplateUri] The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period.
  /// [sasType] The type of SAS token the SAS definition will create. Possible values are `account` and `service`.
  /// [tags] A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created.
  /// [validityPeriod] Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  const ManagedStorageAccountSasTokenDefinitionArgs({
    required this.managedStorageAccountId,
    this.name,
    required this.sasTemplateUri,
    required this.sasType,
    this.tags,
    required this.validityPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedStorageAccountId': managedStorageAccountId,
      'name': ?name,
      'sasTemplateUri': sasTemplateUri,
      'sasType': sasType,
      'tags': ?tags,
      'validityPeriod': validityPeriod,
    };
  }

  factory ManagedStorageAccountSasTokenDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ManagedStorageAccountSasTokenDefinitionArgs(
      managedStorageAccountId: pulumi.Input.fromValue(map['managedStorageAccountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasTemplateUri: pulumi.Input.fromValue(map['sasTemplateUri'] as String),
      sasType: pulumi.Input.fromValue(map['sasType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validityPeriod: pulumi.Input.fromValue(map['validityPeriod'] as String),
    );
  }
}


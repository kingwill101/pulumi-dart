// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedStorageAccountSasTokenDefinition resources.
class ManagedStorageAccountSasTokenDefinitionState {
  /// The ID of the Managed Storage Account.
  final pulumi.Input<String>? managedStorageAccountId;

  /// The name which should be used for this SAS Definition.
  final pulumi.Input<String>? name;

  /// The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period.
  final pulumi.Input<String>? sasTemplateUri;

  /// The type of SAS token the SAS definition will create. Possible values are `account` and `service`.
  final pulumi.Input<String>? sasType;

  /// The ID of the Secret that is created by Managed Storage Account SAS Definition.
  final pulumi.Input<String>? secretId;

  /// A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String>? validityPeriod;

  /// Creates a new [ManagedStorageAccountSasTokenDefinitionState].
  /// [managedStorageAccountId] The ID of the Managed Storage Account.
  /// [name] The name which should be used for this SAS Definition.
  /// [sasTemplateUri] The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period.
  /// [sasType] The type of SAS token the SAS definition will create. Possible values are `account` and `service`.
  /// [secretId] The ID of the Secret that is created by Managed Storage Account SAS Definition.
  /// [tags] A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created.
  /// [validityPeriod] Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  ManagedStorageAccountSasTokenDefinitionState({
    this.managedStorageAccountId,
    this.name,
    this.sasTemplateUri,
    this.sasType,
    this.secretId,
    this.tags,
    this.validityPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedStorageAccountId': ?managedStorageAccountId,
      'name': ?name,
      'sasTemplateUri': ?sasTemplateUri,
      'sasType': ?sasType,
      'secretId': ?secretId,
      'tags': ?tags,
      'validityPeriod': ?validityPeriod,
    };
  }

  factory ManagedStorageAccountSasTokenDefinitionState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedStorageAccountSasTokenDefinitionState(
      managedStorageAccountId: (() {
        final guardedValue = map['managedStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sasTemplateUri: (() {
        final guardedValue = map['sasTemplateUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sasType: (() {
        final guardedValue = map['sasType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretId: (() {
        final guardedValue = map['secretId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      validityPeriod: (() {
        final guardedValue = map['validityPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

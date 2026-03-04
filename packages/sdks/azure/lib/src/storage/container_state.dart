// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Container resources.
class ContainerState {
  /// The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`.
  ///
  /// &gt; **Note:** When updating `container_access_type` for an existing storage container resource, Shared Key authentication will always be used, as AzureAD authentication is not supported.
  final pulumi.Input<String>? containerAccessType;

  /// The default encryption scope to use for blobs uploaded to this container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? defaultEncryptionScope;

  /// Whether to allow blobs to override the default encryption scope for this container. Can only be set when specifying `default_encryption_scope`. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionScopeOverrideEnabled;

  /// Is there an Immutability Policy configured on this Storage Container?
  final pulumi.Input<bool>? hasImmutabilityPolicy;

  /// Is there a Legal Hold configured on this Storage Container?
  final pulumi.Input<bool>? hasLegalHold;

  /// A mapping of MetaData for this Container. All metadata keys should be lowercase.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The Resource Manager ID of this Storage Container.
  final pulumi.Input<String>? resourceManagerId;

  /// The name of the Storage Account where the Container should be created.
  ///
  /// &gt; **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;

  /// The name of the Storage Account where the Container should be created. This property is deprecated in favour of `storage_account_id`.
  ///
  /// &gt; **Note:** Migrating from the deprecated `storage_account_name` to `storage_account_id` is supported without recreation. Any other change to either property will result in the resource being recreated.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [ContainerState].
  /// [containerAccessType] The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`.
  /// [defaultEncryptionScope] The default encryption scope to use for blobs uploaded to this container. Changing this forces a new resource to be created.
  /// [encryptionScopeOverrideEnabled] Whether to allow blobs to override the default encryption scope for this container. Can only be set when specifying `default_encryption_scope`. Defaults to `true`. Changing this forces a new resource to be created.
  /// [hasImmutabilityPolicy] Is there an Immutability Policy configured on this Storage Container?
  /// [hasLegalHold] Is there a Legal Hold configured on this Storage Container?
  /// [metadata] A mapping of MetaData for this Container. All metadata keys should be lowercase.
  /// [name] The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created.
  /// [resourceManagerId] The Resource Manager ID of this Storage Container.
  /// [storageAccountId] The name of the Storage Account where the Container should be created.
  /// [storageAccountName] The name of the Storage Account where the Container should be created. This property is deprecated in favour of `storage_account_id`.
  ContainerState({
    this.containerAccessType,
    this.defaultEncryptionScope,
    this.encryptionScopeOverrideEnabled,
    this.hasImmutabilityPolicy,
    this.hasLegalHold,
    this.metadata,
    this.name,
    this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAccessType': ?containerAccessType,
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'encryptionScopeOverrideEnabled': ?encryptionScopeOverrideEnabled,
      'hasImmutabilityPolicy': ?hasImmutabilityPolicy,
      'hasLegalHold': ?hasLegalHold,
      'metadata': ?metadata,
      'name': ?name,
      'resourceManagerId': ?resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ContainerState.fromMap(Map<String, dynamic> map) {
    return ContainerState(
      containerAccessType: (() {
        final guardedValue = map['containerAccessType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultEncryptionScope: (() {
        final guardedValue = map['defaultEncryptionScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionScopeOverrideEnabled: (() {
        final guardedValue = map['encryptionScopeOverrideEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hasImmutabilityPolicy: (() {
        final guardedValue = map['hasImmutabilityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hasLegalHold: (() {
        final guardedValue = map['hasLegalHold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceManagerId: (() {
        final guardedValue = map['resourceManagerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountId: (() {
        final guardedValue = map['storageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountName: (() {
        final guardedValue = map['storageAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

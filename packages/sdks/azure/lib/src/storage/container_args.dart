// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_container_container_args_doc}
/// The set of arguments for Container.
/// {@endtemplate}
/// {@macro pulumi_storage_container_container_args_doc}
class ContainerArgs {
  /// The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`.
  ///
  /// > **Note:** When updating `container_access_type` for an existing storage container resource, Shared Key authentication will always be used, as AzureAD authentication is not supported.
  final pulumi.Input<String>? containerAccessType;
  /// The default encryption scope to use for blobs uploaded to this container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? defaultEncryptionScope;
  /// Whether to allow blobs to override the default encryption scope for this container. Can only be set when specifying `default_encryption_scope`. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionScopeOverrideEnabled;
  /// A mapping of MetaData for this Container. All metadata keys should be lowercase.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Storage Account where the Container should be created.
  ///
  /// > **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Container should be created. This property is deprecated in favour of `storage_account_id`.
  ///
  /// > **Note:** Migrating from the deprecated `storage_account_name` to `storage_account_id` is supported without recreation. Any other change to either property will result in the resource being recreated.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [ContainerArgs].
  /// [containerAccessType] The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`.
  /// [defaultEncryptionScope] The default encryption scope to use for blobs uploaded to this container. Changing this forces a new resource to be created.
  /// [encryptionScopeOverrideEnabled] Whether to allow blobs to override the default encryption scope for this container. Can only be set when specifying `default_encryption_scope`. Defaults to `true`. Changing this forces a new resource to be created.
  /// [metadata] A mapping of MetaData for this Container. All metadata keys should be lowercase.
  /// [name] The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created.
  /// [storageAccountId] The name of the Storage Account where the Container should be created.
  /// [storageAccountName] The name of the Storage Account where the Container should be created. This property is deprecated in favour of `storage_account_id`.
  ContainerArgs({
    pulumi.Output<String>? containerAccessType,
    pulumi.Output<String>? defaultEncryptionScope,
    pulumi.Output<bool>? encryptionScopeOverrideEnabled,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<String>? storageAccountName,
  }) :
      containerAccessType = pulumi.Input.asOptionalInput<String>(containerAccessType),
      defaultEncryptionScope = pulumi.Input.asOptionalInput<String>(defaultEncryptionScope),
      encryptionScopeOverrideEnabled = pulumi.Input.asOptionalInput<bool>(encryptionScopeOverrideEnabled),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAccessType': ?containerAccessType,
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'encryptionScopeOverrideEnabled': ?encryptionScopeOverrideEnabled,
      'metadata': ?metadata,
      'name': ?name,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ContainerArgs.fromMap(Map<String, dynamic> map) {
    return ContainerArgs(
      containerAccessType: map['containerAccessType'] == null ? null : pulumi.Output.create<String>(map['containerAccessType'] as String),
      defaultEncryptionScope: map['defaultEncryptionScope'] == null ? null : pulumi.Output.create<String>(map['defaultEncryptionScope'] as String),
      encryptionScopeOverrideEnabled: map['encryptionScopeOverrideEnabled'] == null ? null : pulumi.Output.create<bool>(map['encryptionScopeOverrideEnabled'] as bool),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_acl.dart';

/// Input properties used for looking up and filtering Share resources.
class ShareState {
  /// The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`.
  ///
  /// > **Note:** The `FileStorage` `account_kind` of the `azure.storage.Account` requires `Premium` `access_tier`.
  final pulumi.Input<String>? accessTier;
  /// One or more `acl` blocks as defined below.
  final pulumi.Input<List<ShareAcl>>? acls;
  /// The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `FileStorage` `account_kind` of the `azure.storage.Account` is required for the `NFS` protocol.
  final pulumi.Input<String>? enabledProtocol;
  /// A mapping of MetaData for this File Share.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The maximum size of the share, in gigabytes.
  ///
  /// > **Note:** For Standard storage accounts, by default this must be `1` GB (or higher) and at most `5120` GB (`5` TB). This can be set to a value larger than `5120` GB if `large_file_share_enabled` is set to `true` in the parent `azure.storage.Account`.
  ///
  /// > **Note:** For Premium FileStorage storage accounts, this must be greater than `100` GB and at most `102400` GB (`100` TB).
  final pulumi.Input<int>? quota;
  /// The Resource Manager ID of this File Share.
  final pulumi.Input<String>? resourceManagerId;
  /// Specifies the storage account in which to create the share.
  ///
  /// > **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// Specifies the storage account in which to create the share. This property is deprecated in favour of `storage_account_id`.
  ///
  /// > **Note:** Migrating from the deprecated `storage_account_name` to `storage_account_id` is supported without recreation. Any other change to either property will result in the resource being recreated.
  final pulumi.Input<String>? storageAccountName;
  /// The URL of the File Share
  final pulumi.Input<String>? url;

  /// Creates a new [ShareState].
  /// [accessTier] The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`.
  /// [acls] One or more `acl` blocks as defined below.
  /// [enabledProtocol] The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created.
  /// [metadata] A mapping of MetaData for this File Share.
  /// [name] The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created.
  /// [quota] The maximum size of the share, in gigabytes.
  /// [resourceManagerId] The Resource Manager ID of this File Share.
  /// [storageAccountId] Specifies the storage account in which to create the share.
  /// [storageAccountName] Specifies the storage account in which to create the share. This property is deprecated in favour of `storage_account_id`.
  /// [url] The URL of the File Share
  ShareState({
    this.accessTier,
    this.acls,
    this.enabledProtocol,
    this.metadata,
    this.name,
    this.quota,
    this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'acls': ?pulumi.Input.mapOptionalInputValue<List<ShareAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<ShareAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabledProtocol': ?enabledProtocol,
      'metadata': ?metadata,
      'name': ?name,
      'quota': ?quota,
      'resourceManagerId': ?resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
      'url': ?url,
    };
  }

  factory ShareState.fromMap(Map<String, dynamic> map) {
    return ShareState(
      accessTier: map['accessTier'] == null ? null : (map['accessTier'] as String).input(),
      acls: map['acls'] == null ? null : (pulumi.Input.decodeList<ShareAcl>(map['acls'], (value) => ShareAcl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabledProtocol: map['enabledProtocol'] == null ? null : (map['enabledProtocol'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      quota: map['quota'] == null ? null : (map['quota'] as int).input(),
      resourceManagerId: map['resourceManagerId'] == null ? null : (map['resourceManagerId'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}


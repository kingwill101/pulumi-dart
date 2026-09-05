// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_acl.dart';

/// {@template pulumi_storage_share_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_storage_share_share_args_doc}
class ShareArgs {
  /// The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`.
  ///
  /// &gt; **Note:** The `FileStorage` `accountKind` of the `azure.storage.Account` requires `Premium` `accessTier`.
  final pulumi.Input<String?>? accessTier;
  /// One or more `acl` blocks as defined below.
  final pulumi.Input<List<ShareAcl>?>? acls;
  /// The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `FileStorage` `accountKind` of the `azure.storage.Account` is required for the `NFS` protocol.
  final pulumi.Input<String?>? enabledProtocol;
  /// A mapping of MetaData for this File Share.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The maximum size of the share, in gigabytes.
  ///
  /// &gt; **Note:** For Standard storage accounts, by default this must be `1` GB (or higher) and at most `5120` GB (`5` TB). This can be set to a value larger than `5120` GB if `largeFileShareEnabled` is set to `true` in the parent `azure.storage.Account`.
  ///
  /// &gt; **Note:** For Premium FileStorage storage accounts, this must be greater than `100` GB and at most `102400` GB (`100` TB).
  final pulumi.Input<int> quota;
  /// Specifies the storage account in which to create the share.
  ///
  /// &gt; **Note:** One of `storageAccountName` or `storageAccountId` must be specified. When specifying `storageAccountId` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String?>? storageAccountId;
  /// Specifies the storage account in which to create the share. This property is deprecated in favour of `storageAccountId`.
  ///
  /// &gt; **Note:** Migrating from the deprecated `storageAccountName` to `storageAccountId` is supported without recreation. Any other change to either property will result in the resource being recreated.
  final pulumi.Input<String?>? storageAccountName;

  /// Creates a new [ShareArgs].
  /// [accessTier] The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`.
  /// [acls] One or more `acl` blocks as defined below.
  /// [enabledProtocol] The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created.
  /// [metadata] A mapping of MetaData for this File Share.
  /// [name] The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created.
  /// [quota] The maximum size of the share, in gigabytes.
  /// [storageAccountId] Specifies the storage account in which to create the share.
  /// [storageAccountName] Specifies the storage account in which to create the share. This property is deprecated in favour of `storageAccountId`.
  const ShareArgs({
    this.accessTier,
    this.acls,
    this.enabledProtocol,
    this.metadata,
    this.name,
    required this.quota,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'acls': ?pulumi.Input.mapOptionalInputValue<List<ShareAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<ShareAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabledProtocol': ?enabledProtocol,
      'metadata': ?metadata,
      'name': ?name,
      'quota': quota,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acls: (() { final guardedValue = map['acls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareAcl>(guardedValue, (value) => ShareAcl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabledProtocol: (() { final guardedValue = map['enabledProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quota: pulumi.Input.fromValue((map['quota'] as num).toInt()),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

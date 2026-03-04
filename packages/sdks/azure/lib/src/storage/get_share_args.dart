// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_acl.dart';

/// {@template pulumi_storage_get_share_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_storage_get_share_get_share_args_doc}
class GetShareArgs {
  /// One or more acl blocks as defined below.
  final pulumi.Input<List<GetShareAcl>>? acls;

  /// A map of custom file share metadata.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name of the share.
  final pulumi.Input<String> name;

  /// The ID of the storage account in which the share exists.
  ///
  /// &gt; **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;

  /// The name of the storage account in which the share exists. This property is deprecated in favour of `storage_account_id`.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [GetShareArgs].
  /// [acls] One or more acl blocks as defined below.
  /// [metadata] A map of custom file share metadata.
  /// [name] The name of the share.
  /// [storageAccountId] The ID of the storage account in which the share exists.
  /// [storageAccountName] The name of the storage account in which the share exists. This property is deprecated in favour of `storage_account_id`.
  GetShareArgs({
    this.acls,
    this.metadata,
    required this.name,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetShareAcl>,
            List<Map<String, dynamic>>
          >(
            acls,
            (value) =>
                pulumi.Input.encodeList<GetShareAcl, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'metadata': ?metadata,
      'name': name,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      acls: (() {
        final guardedValue = map['acls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetShareAcl>(
            guardedValue,
            (value) =>
                GetShareAcl.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
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

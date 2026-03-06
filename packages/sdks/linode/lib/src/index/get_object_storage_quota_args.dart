// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_object_storage_quota_get_object_storage_quota_args_doc}
/// Arguments for getObjectStorageQuota.
/// {@endtemplate}
/// {@macro pulumi_index_get_object_storage_quota_get_object_storage_quota_args_doc}
class GetObjectStorageQuotaArgs {
  /// The Object Storage quota ID.
  final pulumi.Input<String> quotaId;

  /// Creates a new [GetObjectStorageQuotaArgs].
  /// [quotaId] The Object Storage quota ID.
  const GetObjectStorageQuotaArgs({
    required this.quotaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quotaId': quotaId,
    };
  }

  factory GetObjectStorageQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageQuotaArgs(
      quotaId: pulumi.Input.fromValue(map['quotaId'] as String),
    );
  }
}


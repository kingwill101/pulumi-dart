// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_get_quotaset_v3_get_quotaset_v3_args_doc}
/// Arguments for getQuotasetV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_get_quotaset_v3_get_quotaset_v3_args_doc}
class GetQuotasetV3Args {
  /// The id of the project to retrieve the quotaset.
  final pulumi.Input<String> projectId;

  /// The region in which to obtain the V3 Blockstorage client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQuotasetV3Args].
  /// [projectId] The id of the project to retrieve the quotaset.
  /// [region] The region in which to obtain the V3 Blockstorage client.
  GetQuotasetV3Args({required this.projectId, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'projectId': projectId, 'region': ?region};
  }

  factory GetQuotasetV3Args.fromMap(Map<String, dynamic> map) {
    return GetQuotasetV3Args(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

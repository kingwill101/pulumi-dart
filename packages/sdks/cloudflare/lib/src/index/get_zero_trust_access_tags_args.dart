// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_tags_get_zero_trust_access_tags_args_doc}
/// Arguments for getZeroTrustAccessTags.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_tags_get_zero_trust_access_tags_args_doc}
class GetZeroTrustAccessTagsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustAccessTagsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustAccessTagsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustAccessTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessTagsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

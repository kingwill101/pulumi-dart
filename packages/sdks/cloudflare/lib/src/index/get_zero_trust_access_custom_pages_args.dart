// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_custom_pages_get_zero_trust_access_custom_pages_args_doc}
/// Arguments for getZeroTrustAccessCustomPages.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_custom_pages_get_zero_trust_access_custom_pages_args_doc}
class GetZeroTrustAccessCustomPagesArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustAccessCustomPagesArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustAccessCustomPagesArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustAccessCustomPagesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessCustomPagesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_filter.dart';

/// {@template pulumi_index_get_share_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_index_get_share_get_share_args_doc}
class GetShareArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetShareFilter?>? filter;
  /// Include recipient counts in the response.
  final pulumi.Input<bool?>? includeRecipientCounts;
  /// Include resources in the response.
  final pulumi.Input<bool?>? includeResources;
  /// Share identifier tag.
  final pulumi.Input<String?>? shareId;

  /// Creates a new [GetShareArgs].
  /// [accountId] Account identifier.
  /// [filter] Optional.
  /// [includeRecipientCounts] Include recipient counts in the response.
  /// [includeResources] Include resources in the response.
  /// [shareId] Share identifier tag.
  const GetShareArgs({
    required this.accountId,
    this.filter,
    this.includeRecipientCounts,
    this.includeResources,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetShareFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includeRecipientCounts': ?includeRecipientCounts,
      'includeResources': ?includeResources,
      'shareId': ?shareId,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetShareFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeRecipientCounts: (() { final guardedValue = map['includeRecipientCounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

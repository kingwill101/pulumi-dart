// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_resource_filter.dart';

/// {@template pulumi_index_get_share_resource_get_share_resource_args_doc}
/// Arguments for getShareResource.
/// {@endtemplate}
/// {@macro pulumi_index_get_share_resource_get_share_resource_args_doc}
class GetShareResourceArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetShareResourceFilter?>? filter;
  /// Share identifier tag.
  final pulumi.Input<String> shareId;
  /// Share Resource identifier.
  final pulumi.Input<String?>? shareResourceId;

  /// Creates a new [GetShareResourceArgs].
  /// [accountId] Account identifier.
  /// [filter] Optional.
  /// [shareId] Share identifier tag.
  /// [shareResourceId] Share Resource identifier.
  const GetShareResourceArgs({
    required this.accountId,
    this.filter,
    required this.shareId,
    this.shareResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetShareResourceFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'shareId': shareId,
      'shareResourceId': ?shareResourceId,
    };
  }

  factory GetShareResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetShareResourceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetShareResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
      shareResourceId: (() { final guardedValue = map['shareResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

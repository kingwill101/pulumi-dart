// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_image_share_group_tokens_filter.dart';
import 'get_consumer_image_share_group_tokens_token.dart';

/// {@template pulumi_index_get_consumer_image_share_group_tokens_get_consumer_image_share_group_tokens_args_doc}
/// Arguments for getConsumerImageShareGroupTokens.
/// {@endtemplate}
/// {@macro pulumi_index_get_consumer_image_share_group_tokens_get_consumer_image_share_group_tokens_args_doc}
class GetConsumerImageShareGroupTokensArgs {
  final pulumi.Input<List<GetConsumerImageShareGroupTokensFilter>>? filters;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;
  final pulumi.Input<List<GetConsumerImageShareGroupTokensToken>>? tokens;

  /// Creates a new [GetConsumerImageShareGroupTokensArgs].
  /// [filters] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [tokens] Optional.
  GetConsumerImageShareGroupTokensArgs({
    this.filters,
    this.order,
    this.orderBy,
    this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetConsumerImageShareGroupTokensFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetConsumerImageShareGroupTokensFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
      'tokens': ?pulumi.Input.mapOptionalInputValue<List<GetConsumerImageShareGroupTokensToken>, List<Map<String, dynamic>>>(tokens, (value) => pulumi.Input.encodeList<GetConsumerImageShareGroupTokensToken, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetConsumerImageShareGroupTokensArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupTokensArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetConsumerImageShareGroupTokensFilter>(map['filters'], (value) => GetConsumerImageShareGroupTokensFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
      tokens: map['tokens'] == null ? null : (pulumi.Input.decodeList<GetConsumerImageShareGroupTokensToken>(map['tokens'], (value) => GetConsumerImageShareGroupTokensToken.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


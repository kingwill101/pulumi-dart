// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_image_share_group_tokens_filter.dart';
import 'get_consumer_image_share_group_tokens_token.dart';

/// Result data returned by getConsumerImageShareGroupTokens.
class GetConsumerImageShareGroupTokensResult {
  final List<GetConsumerImageShareGroupTokensFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetConsumerImageShareGroupTokensToken>? tokens;

  /// Creates a new [GetConsumerImageShareGroupTokensResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [tokens] Optional.
  GetConsumerImageShareGroupTokensResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetConsumerImageShareGroupTokensFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'tokens': ?(() {
        final guardedValue = tokens;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetConsumerImageShareGroupTokensToken,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetConsumerImageShareGroupTokensResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConsumerImageShareGroupTokensResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetConsumerImageShareGroupTokensFilter>(
          guardedValue,
          (value) => GetConsumerImageShareGroupTokensFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tokens: (() {
        final guardedValue = map['tokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetConsumerImageShareGroupTokensToken>(
          guardedValue,
          (value) => GetConsumerImageShareGroupTokensToken.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

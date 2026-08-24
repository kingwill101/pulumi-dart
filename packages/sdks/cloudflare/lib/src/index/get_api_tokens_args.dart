// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_tokens_get_api_tokens_args_doc}
/// Arguments for getApiTokens.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_tokens_get_api_tokens_args_doc}
class GetApiTokensArgs {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// When true, includes recently-expired tokens in the response.
  final pulumi.Input<bool?>? includeExpired;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetApiTokensArgs].
  /// [direction] Direction to order results.
  /// [includeExpired] When true, includes recently-expired tokens in the response.
  /// [maxItems] Max items to fetch, default: 1000
  const GetApiTokensArgs({
    this.direction,
    this.includeExpired,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'includeExpired': ?includeExpired,
      'maxItems': ?maxItems,
    };
  }

  factory GetApiTokensArgs.fromMap(Map<String, dynamic> map) {
    return GetApiTokensArgs(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeExpired: (() { final guardedValue = map['includeExpired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

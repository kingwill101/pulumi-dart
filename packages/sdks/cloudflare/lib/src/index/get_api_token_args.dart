// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_token_filter.dart';

/// {@template pulumi_index_get_api_token_get_api_token_args_doc}
/// Arguments for getApiToken.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_token_get_api_token_args_doc}
class GetApiTokenArgs {
  final pulumi.Input<GetApiTokenFilter?>? filter;
  /// Token identifier tag.
  final pulumi.Input<String?>? tokenId;

  /// Creates a new [GetApiTokenArgs].
  /// [filter] Optional.
  /// [tokenId] Token identifier tag.
  const GetApiTokenArgs({
    this.filter,
    this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetApiTokenFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'tokenId': ?tokenId,
    };
  }

  factory GetApiTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetApiTokenArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetApiTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

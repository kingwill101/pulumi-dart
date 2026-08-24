// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_oauth_scopes_get_oauth_scopes_args_doc}
/// Arguments for getOauthScopes.
/// {@endtemplate}
/// {@macro pulumi_index_get_oauth_scopes_get_oauth_scopes_args_doc}
class GetOauthScopesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetOauthScopesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  const GetOauthScopesArgs({
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
    };
  }

  factory GetOauthScopesArgs.fromMap(Map<String, dynamic> map) {
    return GetOauthScopesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

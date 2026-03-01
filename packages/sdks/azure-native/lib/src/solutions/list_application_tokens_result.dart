// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_token_response.dart';

/// Result data returned by listApplicationTokens.
class ListApplicationTokensResult {
  /// The array of managed identity tokens.
  final List<ManagedIdentityTokenResponse>? value;

  /// Creates a new [ListApplicationTokensResult].
  /// [value] The array of managed identity tokens.
  ListApplicationTokensResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<ManagedIdentityTokenResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListApplicationTokensResult.fromMap(Map<String, dynamic> map) {
    return ListApplicationTokensResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<ManagedIdentityTokenResponse>(map['value'], (value) => ManagedIdentityTokenResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


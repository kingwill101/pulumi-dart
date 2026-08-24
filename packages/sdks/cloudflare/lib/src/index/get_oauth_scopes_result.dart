// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOauthScopesResult {
  /// Category for grouping scopes in the UI.
  final pulumi.Input<String> category;
  /// The scope label to use in the scopes array when creating or updating an OAuth client.
  final pulumi.Input<String> id;
  /// Human-readable name of the OAuth scope.
  final pulumi.Input<String> name;
  /// The underlying resource scopes (Bach scopes) that define which resources this OAuth scope can act upon.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [GetOauthScopesResult].
  /// [category] Category for grouping scopes in the UI.
  /// [id] The scope label to use in the scopes array when creating or updating an OAuth client.
  /// [name] Human-readable name of the OAuth scope.
  /// [scopes] The underlying resource scopes (Bach scopes) that define which resources this OAuth scope can act upon.
  const GetOauthScopesResult({
    required this.category,
    required this.id,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'id': id,
      'name': name,
      'scopes': scopes,
    };
  }

  factory GetOauthScopesResult.fromMap(Map<String, dynamic> map) {
    return GetOauthScopesResult(
      category: pulumi.Input.fromValue(map['category'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

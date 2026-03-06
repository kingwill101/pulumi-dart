// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
class PublicInternetAuthorizationRuleResponse {
  /// List of access rights.
  final pulumi.Input<List<String>> rights;

  /// Creates a new [PublicInternetAuthorizationRuleResponse].
  /// [rights] List of access rights.
  const PublicInternetAuthorizationRuleResponse({
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rights': rights,
    };
  }

  factory PublicInternetAuthorizationRuleResponse.fromMap(Map<String, dynamic> map) {
    return PublicInternetAuthorizationRuleResponse(
      rights: pulumi.Input.fromValue((map['rights'] as List).cast<String>()),
    );
  }
}


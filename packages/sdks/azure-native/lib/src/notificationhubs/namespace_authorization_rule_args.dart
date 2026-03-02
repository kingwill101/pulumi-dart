// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_namespace_authorization_rule_args_doc}
/// The set of arguments for NamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_namespace_authorization_rule_args_doc}
class NamespaceAuthorizationRuleArgs {
  /// Authorization Rule Name
  final pulumi.Input<String>? authorizationRuleName;
  final pulumi.Input<String>? location;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the rights associated with the rule.
  final pulumi.Input<List<String>> rights;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final pulumi.Input<String>? secondaryKey;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceAuthorizationRuleArgs].
  /// [authorizationRuleName] Authorization Rule Name
  /// [location] Optional.
  /// [namespaceName] Namespace name
  /// [primaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] Gets or sets the rights associated with the rule.
  /// [secondaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [tags] Optional.
  NamespaceAuthorizationRuleArgs({
    this.authorizationRuleName,
    this.location,
    required this.namespaceName,
    this.primaryKey,
    required this.resourceGroupName,
    required this.rights,
    this.secondaryKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'location': ?location,
      'namespaceName': namespaceName,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
      'tags': ?tags,
    };
  }

  factory NamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : (map['authorizationRuleName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rights: ((map['rights'] as List).cast<String>()).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


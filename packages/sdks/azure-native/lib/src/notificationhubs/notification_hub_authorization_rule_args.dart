// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_notification_hub_authorization_rule_args_doc}
/// The set of arguments for NotificationHubAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_notification_hub_authorization_rule_args_doc}
class NotificationHubAuthorizationRuleArgs {
  /// Authorization Rule Name
  final pulumi.Input<String>? authorizationRuleName;
  final pulumi.Input<String>? location;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String> notificationHubName;
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

  /// Creates a new [NotificationHubAuthorizationRuleArgs].
  /// [authorizationRuleName] Authorization Rule Name
  /// [location] Optional.
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [primaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] Gets or sets the rights associated with the rule.
  /// [secondaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [tags] Optional.
  NotificationHubAuthorizationRuleArgs({
    pulumi.Output<String>? authorizationRuleName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> notificationHubName,
    pulumi.Output<String>? primaryKey,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> rights,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asInput<String>(notificationHubName),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<String>>(rights),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'location': ?location,
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
      'tags': ?tags,
    };
  }

  factory NotificationHubAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NotificationHubAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      notificationHubName: pulumi.Output.create<String>(map['notificationHubName'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rights: pulumi.Output.create<List<String>>((map['rights'] as List).cast<String>()),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


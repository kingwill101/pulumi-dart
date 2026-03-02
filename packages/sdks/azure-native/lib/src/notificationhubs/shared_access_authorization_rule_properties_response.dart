// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SharedAccessAuthorizationRule properties.
class SharedAccessAuthorizationRulePropertiesResponse {
  /// Gets a string that describes the claim type
  final pulumi.Input<String> claimType;
  /// Gets a string that describes the claim value
  final pulumi.Input<String> claimValue;
  /// Gets the created time for this rule
  final pulumi.Input<String> createdTime;
  /// Gets a string that describes the authorization rule.
  final pulumi.Input<String> keyName;
  /// Gets the last modified time for this rule
  final pulumi.Input<String> modifiedTime;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final pulumi.Input<String>? primaryKey;
  /// Gets the revision number for the rule
  final pulumi.Input<int> revision;
  /// Gets or sets the rights associated with the rule.
  final pulumi.Input<List<String>> rights;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final pulumi.Input<String>? secondaryKey;

  /// Creates a new [SharedAccessAuthorizationRulePropertiesResponse].
  /// [claimType] Gets a string that describes the claim type
  /// [claimValue] Gets a string that describes the claim value
  /// [createdTime] Gets the created time for this rule
  /// [keyName] Gets a string that describes the authorization rule.
  /// [modifiedTime] Gets the last modified time for this rule
  /// [primaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [revision] Gets the revision number for the rule
  /// [rights] Gets or sets the rights associated with the rule.
  /// [secondaryKey] Gets a base64-encoded 256-bit primary key for signing and
  SharedAccessAuthorizationRulePropertiesResponse({
    required this.claimType,
    required this.claimValue,
    required this.createdTime,
    required this.keyName,
    required this.modifiedTime,
    this.primaryKey,
    required this.revision,
    required this.rights,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimType': claimType,
      'claimValue': claimValue,
      'createdTime': createdTime,
      'keyName': keyName,
      'modifiedTime': modifiedTime,
      'primaryKey': ?primaryKey,
      'revision': revision,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory SharedAccessAuthorizationRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SharedAccessAuthorizationRulePropertiesResponse(
      claimType: (map['claimType'] as String).input(),
      claimValue: (map['claimValue'] as String).input(),
      createdTime: (map['createdTime'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      modifiedTime: (map['modifiedTime'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey'] as String).input(),
      revision: (map['revision'] as int).input(),
      rights: ((map['rights'] as List).cast<String>()).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey'] as String).input(),
    );
  }
}


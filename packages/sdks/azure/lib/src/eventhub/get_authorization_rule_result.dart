// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationRule.
class GetAuthorizationRuleResult {
  final String? eventhubName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? listen;
  final bool? manage;
  final String? name;
  final String? namespaceName;
  /// The Primary Connection String for the Event Hubs Authorization Rule.
  final String? primaryConnectionString;
  /// The alias of the Primary Connection String for the Event Hubs Authorization Rule.
  final String? primaryConnectionStringAlias;
  /// The Primary Key for the Event Hubs Authorization Rule.
  final String? primaryKey;
  final String? resourceGroupName;
  /// The Secondary Connection String for the Event Hubs Authorization Rule.
  final String? secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Event Hubs Authorization Rule.
  final String? secondaryConnectionStringAlias;
  /// The Secondary Key for the Event Hubs Authorization Rule.
  final String? secondaryKey;
  final bool? send;

  /// Creates a new [GetAuthorizationRuleResult].
  /// [eventhubName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listen] Optional.
  /// [manage] Optional.
  /// [name] Optional.
  /// [namespaceName] Optional.
  /// [primaryConnectionString] The Primary Connection String for the Event Hubs Authorization Rule.
  /// [primaryConnectionStringAlias] The alias of the Primary Connection String for the Event Hubs Authorization Rule.
  /// [primaryKey] The Primary Key for the Event Hubs Authorization Rule.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The Secondary Connection String for the Event Hubs Authorization Rule.
  /// [secondaryConnectionStringAlias] The alias of the Secondary Connection String for the Event Hubs Authorization Rule.
  /// [secondaryKey] The Secondary Key for the Event Hubs Authorization Rule.
  /// [send] Optional.
  const GetAuthorizationRuleResult({
    this.eventhubName,
    this.id,
    this.listen,
    this.manage,
    this.name,
    this.namespaceName,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryConnectionStringAlias,
    this.secondaryKey,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': ?eventhubName,
      'id': ?id,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory GetAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationRuleResult(
      eventhubName: (() { final guardedValue = map['eventhubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionStringAlias: (() { final guardedValue = map['primaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionStringAlias: (() { final guardedValue = map['secondaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceDisasterRecoveryConfig resources.
class NamespaceDisasterRecoveryConfigState {
  /// The Shared access policies used to access the connection string for the alias.
  final pulumi.Input<String?>? aliasAuthorizationRuleId;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String?>? defaultPrimaryKey;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String?>? defaultSecondaryKey;
  /// Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Service Bus Namespace to replicate to.
  final pulumi.Input<String?>? partnerNamespaceId;
  /// The alias Primary Connection String for the ServiceBus Namespace.
  final pulumi.Input<String?>? primaryConnectionStringAlias;
  /// The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? primaryNamespaceId;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final pulumi.Input<String?>? secondaryConnectionStringAlias;

  /// Creates a new [NamespaceDisasterRecoveryConfigState].
  /// [aliasAuthorizationRuleId] The Shared access policies used to access the connection string for the alias.
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [name] Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  /// [partnerNamespaceId] The ID of the Service Bus Namespace to replicate to.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace.
  /// [primaryNamespaceId] The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  const NamespaceDisasterRecoveryConfigState({
    this.aliasAuthorizationRuleId,
    this.defaultPrimaryKey,
    this.defaultSecondaryKey,
    this.name,
    this.partnerNamespaceId,
    this.primaryConnectionStringAlias,
    this.primaryNamespaceId,
    this.secondaryConnectionStringAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasAuthorizationRuleId': ?aliasAuthorizationRuleId,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'name': ?name,
      'partnerNamespaceId': ?partnerNamespaceId,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryNamespaceId': ?primaryNamespaceId,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
    };
  }

  factory NamespaceDisasterRecoveryConfigState.fromMap(Map<String, dynamic> map) {
    return NamespaceDisasterRecoveryConfigState(
      aliasAuthorizationRuleId: (() { final guardedValue = map['aliasAuthorizationRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPrimaryKey: (() { final guardedValue = map['defaultPrimaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSecondaryKey: (() { final guardedValue = map['defaultSecondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerNamespaceId: (() { final guardedValue = map['partnerNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionStringAlias: (() { final guardedValue = map['primaryConnectionStringAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryNamespaceId: (() { final guardedValue = map['primaryNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionStringAlias: (() { final guardedValue = map['secondaryConnectionStringAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

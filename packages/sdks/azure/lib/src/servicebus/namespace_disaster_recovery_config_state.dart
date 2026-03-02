// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceDisasterRecoveryConfig resources.
class NamespaceDisasterRecoveryConfigState {
  /// The Shared access policies used to access the connection string for the alias.
  final pulumi.Input<String>? aliasAuthorizationRuleId;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultPrimaryKey;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultSecondaryKey;
  /// Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Service Bus Namespace to replicate to.
  final pulumi.Input<String>? partnerNamespaceId;
  /// The alias Primary Connection String for the ServiceBus Namespace.
  final pulumi.Input<String>? primaryConnectionStringAlias;
  /// The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? primaryNamespaceId;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  final pulumi.Input<String>? secondaryConnectionStringAlias;

  /// Creates a new [NamespaceDisasterRecoveryConfigState].
  /// [aliasAuthorizationRuleId] The Shared access policies used to access the connection string for the alias.
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [name] Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  /// [partnerNamespaceId] The ID of the Service Bus Namespace to replicate to.
  /// [primaryConnectionStringAlias] The alias Primary Connection String for the ServiceBus Namespace.
  /// [primaryNamespaceId] The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  /// [secondaryConnectionStringAlias] The alias Secondary Connection String for the ServiceBus Namespace
  NamespaceDisasterRecoveryConfigState({
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
      aliasAuthorizationRuleId: map['aliasAuthorizationRuleId'] == null ? null : (map['aliasAuthorizationRuleId']! as String).input(),
      defaultPrimaryKey: map['defaultPrimaryKey'] == null ? null : (map['defaultPrimaryKey']! as String).input(),
      defaultSecondaryKey: map['defaultSecondaryKey'] == null ? null : (map['defaultSecondaryKey']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partnerNamespaceId: map['partnerNamespaceId'] == null ? null : (map['partnerNamespaceId']! as String).input(),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : (map['primaryConnectionStringAlias']! as String).input(),
      primaryNamespaceId: map['primaryNamespaceId'] == null ? null : (map['primaryNamespaceId']! as String).input(),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : (map['secondaryConnectionStringAlias']! as String).input(),
    );
  }
}


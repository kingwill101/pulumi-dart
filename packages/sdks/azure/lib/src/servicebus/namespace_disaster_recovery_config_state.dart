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
    pulumi.Output<String>? aliasAuthorizationRuleId,
    pulumi.Output<String>? defaultPrimaryKey,
    pulumi.Output<String>? defaultSecondaryKey,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partnerNamespaceId,
    pulumi.Output<String>? primaryConnectionStringAlias,
    pulumi.Output<String>? primaryNamespaceId,
    pulumi.Output<String>? secondaryConnectionStringAlias,
  }) :
      aliasAuthorizationRuleId = pulumi.Input.asOptionalInput<String>(aliasAuthorizationRuleId),
      defaultPrimaryKey = pulumi.Input.asOptionalInput<String>(defaultPrimaryKey),
      defaultSecondaryKey = pulumi.Input.asOptionalInput<String>(defaultSecondaryKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      partnerNamespaceId = pulumi.Input.asOptionalInput<String>(partnerNamespaceId),
      primaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(primaryConnectionStringAlias),
      primaryNamespaceId = pulumi.Input.asOptionalInput<String>(primaryNamespaceId),
      secondaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(secondaryConnectionStringAlias);

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
      aliasAuthorizationRuleId: map['aliasAuthorizationRuleId'] == null ? null : pulumi.Output.create<String>(map['aliasAuthorizationRuleId'] as String),
      defaultPrimaryKey: map['defaultPrimaryKey'] == null ? null : pulumi.Output.create<String>(map['defaultPrimaryKey'] as String),
      defaultSecondaryKey: map['defaultSecondaryKey'] == null ? null : pulumi.Output.create<String>(map['defaultSecondaryKey'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partnerNamespaceId: map['partnerNamespaceId'] == null ? null : pulumi.Output.create<String>(map['partnerNamespaceId'] as String),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionStringAlias'] as String),
      primaryNamespaceId: map['primaryNamespaceId'] == null ? null : pulumi.Output.create<String>(map['primaryNamespaceId'] as String),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionStringAlias'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_disaster_recovery_config_args_doc}
/// The set of arguments for DisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_servicebus_disaster_recovery_config_args_doc}
class DisasterRecoveryConfigArgs {
  /// The Disaster Recovery configuration name
  final pulumi.Input<String>? alias;
  /// Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  final pulumi.Input<String>? alternateName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  final pulumi.Input<String>? partnerNamespace;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DisasterRecoveryConfigArgs].
  /// [alias] The Disaster Recovery configuration name
  /// [alternateName] Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  /// [namespaceName] The namespace name
  /// [partnerNamespace] ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DisasterRecoveryConfigArgs({
    this.alias,
    this.alternateName,
    required this.namespaceName,
    this.partnerNamespace,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'alternateName': ?alternateName,
      'namespaceName': namespaceName,
      'partnerNamespace': ?partnerNamespace,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DisasterRecoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return DisasterRecoveryConfigArgs(
      alias: map['alias'] == null ? null : (map['alias']! as String).input(),
      alternateName: map['alternateName'] == null ? null : (map['alternateName']! as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      partnerNamespace: map['partnerNamespace'] == null ? null : (map['partnerNamespace']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


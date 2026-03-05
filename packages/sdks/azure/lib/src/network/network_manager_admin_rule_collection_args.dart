// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_admin_rule_collection_network_manager_admin_rule_collection_args_doc}
/// The set of arguments for NetworkManagerAdminRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_admin_rule_collection_network_manager_admin_rule_collection_args_doc}
class NetworkManagerAdminRuleCollectionArgs {
  /// A description of the Network Manager Admin Rule Collection.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created.
  final pulumi.Input<String>? name;
  /// A list of Network Group ID which this Network Manager Admin Rule Collection applies to.
  final pulumi.Input<List<String>> networkGroupIds;
  /// Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created.
  final pulumi.Input<String> securityAdminConfigurationId;

  /// Creates a new [NetworkManagerAdminRuleCollectionArgs].
  /// [description] A description of the Network Manager Admin Rule Collection.
  /// [name] Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created.
  /// [networkGroupIds] A list of Network Group ID which this Network Manager Admin Rule Collection applies to.
  /// [securityAdminConfigurationId] Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created.
  NetworkManagerAdminRuleCollectionArgs({
    this.description,
    this.name,
    required this.networkGroupIds,
    required this.securityAdminConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkGroupIds': networkGroupIds,
      'securityAdminConfigurationId': securityAdminConfigurationId,
    };
  }

  factory NetworkManagerAdminRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerAdminRuleCollectionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupIds: pulumi.Input.fromValue((map['networkGroupIds'] as List).cast<String>()),
      securityAdminConfigurationId: pulumi.Input.fromValue(map['securityAdminConfigurationId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerAdminRuleCollection resources.
class NetworkManagerAdminRuleCollectionState {
  /// A description of the Network Manager Admin Rule Collection.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created.
  final pulumi.Input<String>? name;
  /// A list of Network Group ID which this Network Manager Admin Rule Collection applies to.
  final pulumi.Input<List<String>>? networkGroupIds;
  /// Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created.
  final pulumi.Input<String>? securityAdminConfigurationId;

  /// Creates a new [NetworkManagerAdminRuleCollectionState].
  /// [description] A description of the Network Manager Admin Rule Collection.
  /// [name] Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created.
  /// [networkGroupIds] A list of Network Group ID which this Network Manager Admin Rule Collection applies to.
  /// [securityAdminConfigurationId] Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created.
  const NetworkManagerAdminRuleCollectionState({
    this.description,
    this.name,
    this.networkGroupIds,
    this.securityAdminConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkGroupIds': ?networkGroupIds,
      'securityAdminConfigurationId': ?securityAdminConfigurationId,
    };
  }

  factory NetworkManagerAdminRuleCollectionState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerAdminRuleCollectionState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupIds: (() { final guardedValue = map['networkGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityAdminConfigurationId: (() { final guardedValue = map['securityAdminConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyVaultNetworkAcl {
  final pulumi.Input<String> bypass;
  final pulumi.Input<String> defaultAction;
  final pulumi.Input<List<String>> ipRules;
  final pulumi.Input<List<String>> virtualNetworkSubnetIds;

  /// Creates a new [GetKeyVaultNetworkAcl].
  /// [bypass] Required.
  /// [defaultAction] Required.
  /// [ipRules] Required.
  /// [virtualNetworkSubnetIds] Required.
  GetKeyVaultNetworkAcl({
    required this.bypass,
    required this.defaultAction,
    required this.ipRules,
    required this.virtualNetworkSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': bypass,
      'defaultAction': defaultAction,
      'ipRules': ipRules,
      'virtualNetworkSubnetIds': virtualNetworkSubnetIds,
    };
  }

  factory GetKeyVaultNetworkAcl.fromMap(Map<String, dynamic> map) {
    return GetKeyVaultNetworkAcl(
      bypass: pulumi.Input.fromValue(map['bypass'] as String),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: pulumi.Input.fromValue((map['ipRules'] as List).cast<String>()),
      virtualNetworkSubnetIds: pulumi.Input.fromValue(
        (map['virtualNetworkSubnetIds'] as List).cast<String>(),
      ),
    );
  }
}

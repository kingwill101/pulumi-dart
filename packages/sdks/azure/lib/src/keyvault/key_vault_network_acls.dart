// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyVaultNetworkAcls {
  /// Specifies which traffic can bypass the network rules. Possible values are `AzureServices` and `None`.
  final pulumi.Input<String> bypass;
  /// The Default Action to use when no rules match from `ip_rules` / `virtual_network_subnet_ids`. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> defaultAction;
  /// One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault.
  final pulumi.Input<List<String>>? ipRules;
  /// One or more Subnet IDs which should be able to access this Key Vault.
  final pulumi.Input<List<String>>? virtualNetworkSubnetIds;

  /// Creates a new [KeyVaultNetworkAcls].
  /// [bypass] Specifies which traffic can bypass the network rules. Possible values are `AzureServices` and `None`.
  /// [defaultAction] The Default Action to use when no rules match from `ip_rules` / `virtual_network_subnet_ids`. Possible values are `Allow` and `Deny`.
  /// [ipRules] One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault.
  /// [virtualNetworkSubnetIds] One or more Subnet IDs which should be able to access this Key Vault.
  const KeyVaultNetworkAcls({
    required this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.virtualNetworkSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': bypass,
      'defaultAction': defaultAction,
      'ipRules': ?ipRules,
      'virtualNetworkSubnetIds': ?virtualNetworkSubnetIds,
    };
  }

  factory KeyVaultNetworkAcls.fromMap(Map<String, dynamic> map) {
    return KeyVaultNetworkAcls(
      bypass: pulumi.Input.fromValue(map['bypass'] as String),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualNetworkSubnetIds: (() { final guardedValue = map['virtualNetworkSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


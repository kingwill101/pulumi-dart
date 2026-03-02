// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagerAdminRuleDestination {
  /// Specifies the address prefix.
  final pulumi.Input<String> addressPrefix;
  /// Specifies the address prefix type. Possible values are `IPPrefix` and `ServiceTag`. For more information, please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#source-and-destination-types).
  final pulumi.Input<String> addressPrefixType;

  /// Creates a new [NetworkManagerAdminRuleDestination].
  /// [addressPrefix] Specifies the address prefix.
  /// [addressPrefixType] Specifies the address prefix type. Possible values are `IPPrefix` and `ServiceTag`. For more information, please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#source-and-destination-types).
  NetworkManagerAdminRuleDestination({
    required this.addressPrefix,
    required this.addressPrefixType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'addressPrefixType': addressPrefixType,
    };
  }

  factory NetworkManagerAdminRuleDestination.fromMap(Map<String, dynamic> map) {
    return NetworkManagerAdminRuleDestination(
      addressPrefix: (map['addressPrefix'] as String).input(),
      addressPrefixType: (map['addressPrefixType'] as String).input(),
    );
  }
}


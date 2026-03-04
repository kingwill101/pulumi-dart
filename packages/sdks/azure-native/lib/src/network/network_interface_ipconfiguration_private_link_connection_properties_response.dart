// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PrivateLinkConnection properties for the network interface.
class NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse {
  /// List of FQDNs for current private link connection.
  final pulumi.Input<List<String>> fqdns;

  /// The group ID for current private link connection.
  final pulumi.Input<String> groupId;

  /// The required member name for current private link connection.
  final pulumi.Input<String> requiredMemberName;

  /// Creates a new [NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse].
  /// [fqdns] List of FQDNs for current private link connection.
  /// [groupId] The group ID for current private link connection.
  /// [requiredMemberName] The required member name for current private link connection.
  NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse({
    required this.fqdns,
    required this.groupId,
    required this.requiredMemberName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': fqdns,
      'groupId': groupId,
      'requiredMemberName': requiredMemberName,
    };
  }

  factory NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse(
      fqdns: pulumi.Input.fromValue((map['fqdns'] as List).cast<String>()),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      requiredMemberName: pulumi.Input.fromValue(
        map['requiredMemberName'] as String,
      ),
    );
  }
}

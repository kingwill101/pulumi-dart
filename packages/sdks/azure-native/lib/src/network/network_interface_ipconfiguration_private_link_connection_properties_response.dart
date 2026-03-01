// ignore_for_file: unused_element, unnecessary_cast


/// PrivateLinkConnection properties for the network interface.
class NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse {
  /// List of FQDNs for current private link connection.
  final List<String> fqdns;
  /// The group ID for current private link connection.
  final String groupId;
  /// The required member name for current private link connection.
  final String requiredMemberName;

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

  factory NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse(
      fqdns: (map['fqdns'] as List).cast<String>(),
      groupId: map['groupId'] as String,
      requiredMemberName: map['requiredMemberName'] as String,
    );
  }
}


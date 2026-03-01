// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.
  final List<String> identityIds;
  /// The type of Managed Service Identity that should be configured on this App Configuration. The only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.
  /// [type] The type of Managed Service Identity that should be configured on this App Configuration. The only possible value is `UserAssigned`.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}


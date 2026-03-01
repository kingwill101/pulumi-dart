// ignore_for_file: unused_element, unnecessary_cast


class HBaseClusterNetwork {
  /// The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** To enable the private link the `connection_direction` must be set to `Outbound`.
  final String? connectionDirection;
  /// Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final bool? privateLinkEnabled;

  /// Creates a new [HBaseClusterNetwork].
  /// [connectionDirection] The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  /// [privateLinkEnabled] Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  HBaseClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDirection': ?connectionDirection,
      'privateLinkEnabled': ?privateLinkEnabled,
    };
  }

  factory HBaseClusterNetwork.fromMap(Map<String, dynamic> map) {
    return HBaseClusterNetwork(
      connectionDirection: map['connectionDirection'] == null ? null : map['connectionDirection'] as String,
      privateLinkEnabled: map['privateLinkEnabled'] == null ? null : map['privateLinkEnabled'] as bool,
    );
  }
}


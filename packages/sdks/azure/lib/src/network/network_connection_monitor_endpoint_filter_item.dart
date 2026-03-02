// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkConnectionMonitorEndpointFilterItem {
  /// The address of the filter item.
  final pulumi.Input<String>? address;
  /// The type of items included in the filter. Possible values are `AgentAddress`. Defaults to `AgentAddress`.
  final pulumi.Input<String>? type;

  /// Creates a new [NetworkConnectionMonitorEndpointFilterItem].
  /// [address] The address of the filter item.
  /// [type] The type of items included in the filter. Possible values are `AgentAddress`. Defaults to `AgentAddress`.
  NetworkConnectionMonitorEndpointFilterItem({
    this.address,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'type': ?type,
    };
  }

  factory NetworkConnectionMonitorEndpointFilterItem.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorEndpointFilterItem(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}


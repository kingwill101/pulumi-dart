// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_endpoint_filter_item.dart';

class NetworkConnectionMonitorEndpointFilter {
  /// A `item` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorEndpointFilterItem>?>? items;
  /// The behaviour type of this endpoint filter. Currently the only allowed value is `Include`. Defaults to `Include`.
  final pulumi.Input<String?>? type;

  /// Creates a new [NetworkConnectionMonitorEndpointFilter].
  /// [items] A `item` block as defined below.
  /// [type] The behaviour type of this endpoint filter. Currently the only allowed value is `Include`. Defaults to `Include`.
  const NetworkConnectionMonitorEndpointFilter({
    this.items,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<NetworkConnectionMonitorEndpointFilterItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<NetworkConnectionMonitorEndpointFilterItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory NetworkConnectionMonitorEndpointFilter.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorEndpointFilter(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkConnectionMonitorEndpointFilterItem>(guardedValue, (value) => NetworkConnectionMonitorEndpointFilterItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

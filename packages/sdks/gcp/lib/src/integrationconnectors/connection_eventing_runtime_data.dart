// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_runtime_data_status.dart';

class ConnectionEventingRuntimeData {
  /// Events listener endpoint. The value will populated after provisioning the events listener.
  final pulumi.Input<String>? eventsListenerEndpoint;
  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionEventingRuntimeDataStatus>>? statuses;

  /// Creates a new [ConnectionEventingRuntimeData].
  /// [eventsListenerEndpoint] Events listener endpoint. The value will populated after provisioning the events listener.
  /// [statuses] (Output)
  ConnectionEventingRuntimeData({
    this.eventsListenerEndpoint,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventsListenerEndpoint': ?eventsListenerEndpoint,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ConnectionEventingRuntimeDataStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ConnectionEventingRuntimeDataStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectionEventingRuntimeData.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingRuntimeData(
      eventsListenerEndpoint: map['eventsListenerEndpoint'] == null ? null : (map['eventsListenerEndpoint']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<ConnectionEventingRuntimeDataStatus>(map['statuses']!, (value) => ConnectionEventingRuntimeDataStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


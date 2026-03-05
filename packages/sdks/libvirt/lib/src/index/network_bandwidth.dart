// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_bandwidth_inbound.dart';
import 'network_bandwidth_outbound.dart';

class NetworkBandwidth {
  /// Sets the class identifier for the bandwidth configuration, categorizing the type of bandwidth used for the network.
  final pulumi.Input<double>? classId;
  /// Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  final pulumi.Input<NetworkBandwidthInbound>? inbound;
  /// Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  final pulumi.Input<NetworkBandwidthOutbound>? outbound;

  /// Creates a new [NetworkBandwidth].
  /// [classId] Sets the class identifier for the bandwidth configuration, categorizing the type of bandwidth used for the network.
  /// [inbound] Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  /// [outbound] Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  NetworkBandwidth({
    this.classId,
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classId': ?classId,
      'inbound': ?pulumi.Input.mapOptionalInputValue<NetworkBandwidthInbound, Map<String, dynamic>>(inbound, (value) => value.toMap()),
      'outbound': ?pulumi.Input.mapOptionalInputValue<NetworkBandwidthOutbound, Map<String, dynamic>>(outbound, (value) => value.toMap()),
    };
  }

  factory NetworkBandwidth.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidth(
      classId: (() { final guardedValue = map['classId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      inbound: (() { final guardedValue = map['inbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkBandwidthInbound.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outbound: (() { final guardedValue = map['outbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkBandwidthOutbound.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


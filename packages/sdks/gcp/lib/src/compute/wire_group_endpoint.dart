// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_endpoint_interconnect.dart';

class WireGroupEndpoint {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> endpoint;
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupEndpointInterconnect>>? interconnects;

  /// Creates a new [WireGroupEndpoint].
  /// [endpoint] The identifier for this object. Format specified above.
  /// [interconnects] Structure is documented below.
  WireGroupEndpoint({
    required this.endpoint,
    this.interconnects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'interconnects': ?pulumi.Input.mapOptionalInputValue<List<WireGroupEndpointInterconnect>, List<Map<String, dynamic>>>(interconnects, (value) => pulumi.Input.encodeList<WireGroupEndpointInterconnect, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WireGroupEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupEndpoint(
      endpoint: (map['endpoint'] as String).input(),
      interconnects: map['interconnects'] == null ? null : (pulumi.Input.decodeList<WireGroupEndpointInterconnect>(map['interconnects']!, (value) => WireGroupEndpointInterconnect.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


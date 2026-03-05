// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkEndpointGroupPscData {
  /// The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// this flag isn't specified for a PSC NEG with endpoint type
  /// private-service-connect, then PSC NEG will be connected to a first port in the
  /// available PSC producer port range.
  final pulumi.Input<String>? producerPort;

  /// Creates a new [RegionNetworkEndpointGroupPscData].
  /// [producerPort] The PSC producer port to use when consumer PSC NEG connects to a producer. If
  RegionNetworkEndpointGroupPscData({
    this.producerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'producerPort': ?producerPort,
    };
  }

  factory RegionNetworkEndpointGroupPscData.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupPscData(
      producerPort: (() { final guardedValue = map['producerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


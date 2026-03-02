// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceVirtualNetworkConfiguration {
  /// The id of the subnet that will be used for the API Management.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ServiceVirtualNetworkConfiguration].
  /// [subnetId] The id of the subnet that will be used for the API Management.
  ServiceVirtualNetworkConfiguration({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory ServiceVirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceVirtualNetworkConfiguration(
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}


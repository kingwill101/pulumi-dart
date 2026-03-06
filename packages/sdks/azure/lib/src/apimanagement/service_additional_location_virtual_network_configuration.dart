// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAdditionalLocationVirtualNetworkConfiguration {
  /// The id of the subnet that will be used for the API Management.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ServiceAdditionalLocationVirtualNetworkConfiguration].
  /// [subnetId] The id of the subnet that will be used for the API Management.
  const ServiceAdditionalLocationVirtualNetworkConfiguration({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory ServiceAdditionalLocationVirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceAdditionalLocationVirtualNetworkConfiguration(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}


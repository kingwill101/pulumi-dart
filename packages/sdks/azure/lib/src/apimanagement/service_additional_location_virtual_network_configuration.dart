// ignore_for_file: unused_element, unnecessary_cast


class ServiceAdditionalLocationVirtualNetworkConfiguration {
  /// The id of the subnet that will be used for the API Management.
  final String subnetId;

  /// Creates a new [ServiceAdditionalLocationVirtualNetworkConfiguration].
  /// [subnetId] The id of the subnet that will be used for the API Management.
  ServiceAdditionalLocationVirtualNetworkConfiguration({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory ServiceAdditionalLocationVirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceAdditionalLocationVirtualNetworkConfiguration(
      subnetId: map['subnetId'] as String,
    );
  }
}


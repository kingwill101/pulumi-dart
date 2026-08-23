// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_services_supported_service.dart';

/// Result data returned by getSupportedServices.
class GetSupportedServicesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The list of VPC-SC supported services. Each service contains the following fields:
  final List<GetSupportedServicesSupportedService> supportedServices;

  /// Creates a new [GetSupportedServicesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [supportedServices] The list of VPC-SC supported services. Each service contains the following fields:
  const GetSupportedServicesResult({
    required this.id,
    required this.supportedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'supportedServices': pulumi.Input.encodeList<GetSupportedServicesSupportedService, Map<String, dynamic>>(supportedServices, (value) => value.toMap()),
    };
  }

  factory GetSupportedServicesResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedServicesResult(
      id: map['id'] as String,
      supportedServices: pulumi.Input.decodeList<GetSupportedServicesSupportedService>(map['supportedServices']!, (value) => GetSupportedServicesSupportedService.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

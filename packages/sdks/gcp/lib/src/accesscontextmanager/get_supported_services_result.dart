// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_services_supported_service.dart';

/// Result data returned by getSupportedServices.
class GetSupportedServicesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of VPC-SC supported services. Each service contains the following fields:
  final List<GetSupportedServicesSupportedService>? supportedServices;

  /// Creates a new [GetSupportedServicesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [supportedServices] The list of VPC-SC supported services. Each service contains the following fields:
  const GetSupportedServicesResult({
    this.id,
    this.supportedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'supportedServices': ?(() { final guardedValue = supportedServices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSupportedServicesSupportedService, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSupportedServicesResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedServicesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedServices: (() { final guardedValue = map['supportedServices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSupportedServicesSupportedService>(guardedValue, (value) => GetSupportedServicesSupportedService.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

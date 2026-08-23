// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_service_supported_method.dart';

/// Result data returned by getSupportedService.
class GetSupportedServiceResult {
  /// True if the service is available on the restricted VIP. Services on the restricted VIP typically either support VPC Service Controls or are core infrastructure services required for the functioning of Google Cloud.
  final bool availableOnRestrictedVip;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// True if the service is supported with some limitations. Check [documentation](https://cloud.google.com/vpc-service-controls/docs/supported-products) for details.
  final bool knownLimitations;
  final String serviceName;
  /// The support stage of the service. Values are `GA`, `PREVIEW`, and `DEPRECATED`.
  final String serviceSupportStage;
  /// The support stage of the service.
  final String supportStage;
  /// The list of supported methods for this service. Each method contains the following fields:
  final List<GetSupportedServiceSupportedMethod> supportedMethods;
  /// The name of the supported product, such as 'Cloud Storage'.
  final String title;

  /// Creates a new [GetSupportedServiceResult].
  /// [availableOnRestrictedVip] True if the service is available on the restricted VIP. Services on the restricted VIP typically either support VPC Service Controls or are core infrastructure services required for the functioning of Google Cloud.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knownLimitations] True if the service is supported with some limitations. Check [documentation](https://cloud.google.com/vpc-service-controls/docs/supported-products) for details.
  /// [serviceName] Required.
  /// [serviceSupportStage] The support stage of the service. Values are `GA`, `PREVIEW`, and `DEPRECATED`.
  /// [supportStage] The support stage of the service.
  /// [supportedMethods] The list of supported methods for this service. Each method contains the following fields:
  /// [title] The name of the supported product, such as 'Cloud Storage'.
  const GetSupportedServiceResult({
    required this.availableOnRestrictedVip,
    required this.id,
    required this.knownLimitations,
    required this.serviceName,
    required this.serviceSupportStage,
    required this.supportStage,
    required this.supportedMethods,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableOnRestrictedVip': availableOnRestrictedVip,
      'id': id,
      'knownLimitations': knownLimitations,
      'serviceName': serviceName,
      'serviceSupportStage': serviceSupportStage,
      'supportStage': supportStage,
      'supportedMethods': pulumi.Input.encodeList<GetSupportedServiceSupportedMethod, Map<String, dynamic>>(supportedMethods, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GetSupportedServiceResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedServiceResult(
      availableOnRestrictedVip: map['availableOnRestrictedVip'] as bool,
      id: map['id'] as String,
      knownLimitations: map['knownLimitations'] as bool,
      serviceName: map['serviceName'] as String,
      serviceSupportStage: map['serviceSupportStage'] as String,
      supportStage: map['supportStage'] as String,
      supportedMethods: pulumi.Input.decodeList<GetSupportedServiceSupportedMethod>(map['supportedMethods']!, (value) => GetSupportedServiceSupportedMethod.fromMap((value as Map).cast<String, dynamic>())),
      title: map['title'] as String,
    );
  }
}

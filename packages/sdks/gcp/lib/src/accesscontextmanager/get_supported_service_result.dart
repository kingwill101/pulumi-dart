// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_service_supported_method.dart';

/// Result data returned by getSupportedService.
class GetSupportedServiceResult {
  /// True if the service is available on the restricted VIP. Services on the restricted VIP typically either support VPC Service Controls or are core infrastructure services required for the functioning of Google Cloud.
  final bool? availableOnRestrictedVip;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// True if the service is supported with some limitations. Check [documentation](https://cloud.google.com/vpc-service-controls/docs/supported-products) for details.
  final bool? knownLimitations;
  final String? serviceName;
  /// The support stage of the service. Values are `GA`, `PREVIEW`, and `DEPRECATED`.
  final String? serviceSupportStage;
  /// The support stage of the service.
  final String? supportStage;
  /// The list of supported methods for this service. Each method contains the following fields:
  final List<GetSupportedServiceSupportedMethod>? supportedMethods;
  /// The name of the supported product, such as 'Cloud Storage'.
  final String? title;

  /// Creates a new [GetSupportedServiceResult].
  /// [availableOnRestrictedVip] True if the service is available on the restricted VIP. Services on the restricted VIP typically either support VPC Service Controls or are core infrastructure services required for the functioning of Google Cloud.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knownLimitations] True if the service is supported with some limitations. Check [documentation](https://cloud.google.com/vpc-service-controls/docs/supported-products) for details.
  /// [serviceName] Optional.
  /// [serviceSupportStage] The support stage of the service. Values are `GA`, `PREVIEW`, and `DEPRECATED`.
  /// [supportStage] The support stage of the service.
  /// [supportedMethods] The list of supported methods for this service. Each method contains the following fields:
  /// [title] The name of the supported product, such as 'Cloud Storage'.
  const GetSupportedServiceResult({
    this.availableOnRestrictedVip,
    this.id,
    this.knownLimitations,
    this.serviceName,
    this.serviceSupportStage,
    this.supportStage,
    this.supportedMethods,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableOnRestrictedVip': ?availableOnRestrictedVip,
      'id': ?id,
      'knownLimitations': ?knownLimitations,
      'serviceName': ?serviceName,
      'serviceSupportStage': ?serviceSupportStage,
      'supportStage': ?supportStage,
      'supportedMethods': ?(() { final guardedValue = supportedMethods; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSupportedServiceSupportedMethod, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'title': ?title,
    };
  }

  factory GetSupportedServiceResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedServiceResult(
      availableOnRestrictedVip: (() { final guardedValue = map['availableOnRestrictedVip']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      knownLimitations: (() { final guardedValue = map['knownLimitations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceSupportStage: (() { final guardedValue = map['serviceSupportStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportStage: (() { final guardedValue = map['supportStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedMethods: (() { final guardedValue = map['supportedMethods']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSupportedServiceSupportedMethod>(guardedValue, (value) => GetSupportedServiceSupportedMethod.fromMap((value as Map).cast<String, dynamic>())); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

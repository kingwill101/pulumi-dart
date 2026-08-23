// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSupportedServicesSupportedService {
  /// True if the service is available on the restricted VIP. Services on the restricted VIP typically either support VPC Service Controls or are core infrastructure services required for the functioning of Google Cloud.
  final pulumi.Input<bool> availableOnRestrictedVip;
  /// True if the service is supported with some limitations. Check [documentation](https://cloud.google.com/vpc-service-controls/docs/supported-products) for details.
  final pulumi.Input<bool> knownLimitations;
  /// The service name or address of the supported service, such as `storage.googleapis.com`.
  final pulumi.Input<String> name;
  /// The support stage of the service. Values are `GA`, `PREVIEW`, and `DEPRECATED`.
  final pulumi.Input<String> serviceSupportStage;
  /// The support stage of the service.
  final pulumi.Input<String> supportStage;
  /// The name of the supported product, such as 'Cloud Storage'.
  final pulumi.Input<String> title;

  /// Creates a new [GetSupportedServicesSupportedService].
  /// [availableOnRestrictedVip] True if the service is available on the restricted VIP. Services on the restricted VIP typically either support VPC Service Controls or are core infrastructure services required for the functioning of Google Cloud.
  /// [knownLimitations] True if the service is supported with some limitations. Check [documentation](https://cloud.google.com/vpc-service-controls/docs/supported-products) for details.
  /// [name] The service name or address of the supported service, such as `storage.googleapis.com`.
  /// [serviceSupportStage] The support stage of the service. Values are `GA`, `PREVIEW`, and `DEPRECATED`.
  /// [supportStage] The support stage of the service.
  /// [title] The name of the supported product, such as 'Cloud Storage'.
  const GetSupportedServicesSupportedService({
    required this.availableOnRestrictedVip,
    required this.knownLimitations,
    required this.name,
    required this.serviceSupportStage,
    required this.supportStage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableOnRestrictedVip': availableOnRestrictedVip,
      'knownLimitations': knownLimitations,
      'name': name,
      'serviceSupportStage': serviceSupportStage,
      'supportStage': supportStage,
      'title': title,
    };
  }

  factory GetSupportedServicesSupportedService.fromMap(Map<String, dynamic> map) {
    return GetSupportedServicesSupportedService(
      availableOnRestrictedVip: pulumi.Input.fromValue(map['availableOnRestrictedVip'] as bool),
      knownLimitations: pulumi.Input.fromValue(map['knownLimitations'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceSupportStage: pulumi.Input.fromValue(map['serviceSupportStage'] as String),
      supportStage: pulumi.Input.fromValue(map['supportStage'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1beta_get_service_perimeter_accesscontextmanager_v1beta_args_doc}
/// Arguments for getServicePerimeter.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1beta_get_service_perimeter_accesscontextmanager_v1beta_args_doc}
class GetServicePerimeterAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String> accessPolicyId;
  final pulumi.Input<String> servicePerimeterId;

  /// Creates a new [GetServicePerimeterAccesscontextmanagerV1betaArgs].
  /// [accessPolicyId] Required.
  /// [servicePerimeterId] Required.
  const GetServicePerimeterAccesscontextmanagerV1betaArgs({
    required this.accessPolicyId,
    required this.servicePerimeterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'servicePerimeterId': servicePerimeterId,
    };
  }

  factory GetServicePerimeterAccesscontextmanagerV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterAccesscontextmanagerV1betaArgs(
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
      servicePerimeterId: pulumi.Input.fromValue(map['servicePerimeterId'] as String),
    );
  }
}

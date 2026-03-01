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
  GetServicePerimeterAccesscontextmanagerV1betaArgs({
    required pulumi.Output<String> accessPolicyId,
    required pulumi.Output<String> servicePerimeterId,
  }) :
      accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
      servicePerimeterId = pulumi.Input.asInput<String>(servicePerimeterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'servicePerimeterId': servicePerimeterId,
    };
  }

  factory GetServicePerimeterAccesscontextmanagerV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterAccesscontextmanagerV1betaArgs(
      accessPolicyId: pulumi.Output.create<String>(map['accessPolicyId'] as String),
      servicePerimeterId: pulumi.Output.create<String>(map['servicePerimeterId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter.dart';

/// {@template pulumi_accesscontextmanager_service_perimeters_service_perimeters_args_doc}
/// The set of arguments for ServicePerimeters.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeters_service_perimeters_args_doc}
class ServicePerimetersArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;
  /// The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeter>>? servicePerimeters;

  /// Creates a new [ServicePerimetersArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [parent] The AccessPolicy this ServicePerimeter lives in.
  /// [servicePerimeters] The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  const ServicePerimetersArgs({
    this.deletionPolicy,
    required this.parent,
    this.servicePerimeters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'parent': parent,
      'servicePerimeters': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimetersServicePerimeter>, List<Map<String, dynamic>>>(servicePerimeters, (value) => pulumi.Input.encodeList<ServicePerimetersServicePerimeter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServicePerimetersArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      servicePerimeters: (() { final guardedValue = map['servicePerimeters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimetersServicePerimeter>(guardedValue, (value) => ServicePerimetersServicePerimeter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

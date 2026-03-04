// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_parameters_reference_resource_k8s_io_v1alpha2.dart';

/// ResourceClaimSpec defines how a resource is to be allocated.
class ResourceClaimSpecResourceK8sIoV1alpha2 {
  /// Allocation can start immediately or when a Pod wants to use the resource. "WaitForFirstConsumer" is the default.
  final pulumi.Input<String>? allocationMode;

  /// ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.
  ///
  /// The object must be in the same namespace as the ResourceClaim.
  final pulumi.Input<ResourceClaimParametersReferenceResourceK8sIoV1alpha2>?
  parametersRef;

  /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  final pulumi.Input<String> resourceClassName;

  /// Creates a new [ResourceClaimSpecResourceK8sIoV1alpha2].
  /// [allocationMode] Allocation can start immediately or when a Pod wants to use the resource. "WaitForFirstConsumer" is the default.
  /// [parametersRef] ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.
  /// [resourceClassName] ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  ResourceClaimSpecResourceK8sIoV1alpha2({
    this.allocationMode,
    this.parametersRef,
    required this.resourceClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMode': ?allocationMode,
      'parametersRef':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceClaimParametersReferenceResourceK8sIoV1alpha2,
            Map<String, dynamic>
          >(parametersRef, (value) => value.toMap()),
      'resourceClassName': resourceClassName,
    };
  }

  factory ResourceClaimSpecResourceK8sIoV1alpha2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceClaimSpecResourceK8sIoV1alpha2(
      allocationMode: (() {
        final guardedValue = map['allocationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parametersRef: (() {
        final guardedValue = map['parametersRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceClaimParametersReferenceResourceK8sIoV1alpha2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceClassName: pulumi.Input.fromValue(
        map['resourceClassName'] as String,
      ),
    );
  }
}

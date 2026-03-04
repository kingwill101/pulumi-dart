// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_allocation_result.dart';

/// DriverAllocationResult contains vendor parameters and the allocation result for one request.
class DriverAllocationResult {
  /// NamedResources describes the allocation result when using the named resources model.
  final pulumi.Input<NamedResourcesAllocationResult>? namedResources;

  /// VendorRequestParameters are the per-request configuration parameters from the time that the claim was allocated.
  final pulumi.Input<dynamic>? vendorRequestParameters;

  /// Creates a new [DriverAllocationResult].
  /// [namedResources] NamedResources describes the allocation result when using the named resources model.
  /// [vendorRequestParameters] VendorRequestParameters are the per-request configuration parameters from the time that the claim was allocated.
  DriverAllocationResult({this.namedResources, this.vendorRequestParameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedResources':
          ?pulumi.Input.mapOptionalInputValue<
            NamedResourcesAllocationResult,
            Map<String, dynamic>
          >(namedResources, (value) => value.toMap()),
      'vendorRequestParameters': ?vendorRequestParameters,
    };
  }

  factory DriverAllocationResult.fromMap(Map<String, dynamic> map) {
    return DriverAllocationResult(
      namedResources: (() {
        final guardedValue = map['namedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamedResourcesAllocationResult.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vendorRequestParameters: (() {
        final guardedValue = map['vendorRequestParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}

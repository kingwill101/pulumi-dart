// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_request.dart';

/// ResourceRequest is a request for resources from one particular driver.
class ResourceRequest {
  /// NamedResources describes a request for resources with the named resources model.
  final pulumi.Input<NamedResourcesRequest?>? namedResources;
  /// VendorParameters are arbitrary setup parameters for the requested resource. They are ignored while allocating a claim.
  final pulumi.Input<dynamic>? vendorParameters;

  /// Creates a new [ResourceRequest].
  /// [namedResources] NamedResources describes a request for resources with the named resources model.
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for the requested resource. They are ignored while allocating a claim.
  const ResourceRequest({
    this.namedResources,
    this.vendorParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedResources': ?pulumi.Input.mapOptionalInputValue<NamedResourcesRequest, Map<String, dynamic>>(namedResources, (value) => value.toMap()),
      'vendorParameters': ?vendorParameters,
    };
  }

  factory ResourceRequest.fromMap(Map<String, dynamic> map) {
    return ResourceRequest(
      namedResources: (() { final guardedValue = map['namedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedResourcesRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vendorParameters: (() { final guardedValue = map['vendorParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

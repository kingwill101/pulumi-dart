// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_request_patch.dart';

/// ResourceRequest is a request for resources from one particular driver.
class ResourceRequestPatch {
  /// NamedResources describes a request for resources with the named resources model.
  final pulumi.Input<NamedResourcesRequestPatch>? namedResources;
  /// VendorParameters are arbitrary setup parameters for the requested resource. They are ignored while allocating a claim.
  final pulumi.Input<dynamic>? vendorParameters;

  /// Creates a new [ResourceRequestPatch].
  /// [namedResources] NamedResources describes a request for resources with the named resources model.
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for the requested resource. They are ignored while allocating a claim.
  ResourceRequestPatch({
    this.namedResources,
    this.vendorParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedResources': ?pulumi.Input.mapOptionalInputValue<NamedResourcesRequestPatch, Map<String, dynamic>>(namedResources, (value) => value.toMap()),
      'vendorParameters': ?vendorParameters,
    };
  }

  factory ResourceRequestPatch.fromMap(Map<String, dynamic> map) {
    return ResourceRequestPatch(
      namedResources: map['namedResources'] == null ? null : (NamedResourcesRequestPatch.fromMap((map['namedResources']! as Map).cast<String, dynamic>())).input(),
      vendorParameters: map['vendorParameters'] == null ? null : (map['vendorParameters']!).input(),
    );
  }
}


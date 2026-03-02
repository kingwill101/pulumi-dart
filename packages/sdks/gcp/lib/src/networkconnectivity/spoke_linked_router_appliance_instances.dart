// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_linked_router_appliance_instances_instance.dart';

class SpokeLinkedRouterApplianceInstances {
  /// IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// The only allowed value for now is "ALL_IPV4_RANGES".
  final pulumi.Input<List<String>>? includeImportRanges;
  /// The list of router appliance instances
  /// Structure is documented below.
  final pulumi.Input<List<SpokeLinkedRouterApplianceInstancesInstance>> instances;
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final pulumi.Input<bool> siteToSiteDataTransfer;

  /// Creates a new [SpokeLinkedRouterApplianceInstances].
  /// [includeImportRanges] IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// [instances] The list of router appliance instances
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  SpokeLinkedRouterApplianceInstances({
    this.includeImportRanges,
    required this.instances,
    required this.siteToSiteDataTransfer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeImportRanges': ?includeImportRanges,
      'instances': pulumi.Input.mapInputValue<List<SpokeLinkedRouterApplianceInstancesInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<SpokeLinkedRouterApplianceInstancesInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteToSiteDataTransfer': siteToSiteDataTransfer,
    };
  }

  factory SpokeLinkedRouterApplianceInstances.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedRouterApplianceInstances(
      includeImportRanges: map['includeImportRanges'] == null ? null : ((map['includeImportRanges'] as List).cast<String>()).input(),
      instances: (pulumi.Input.decodeList<SpokeLinkedRouterApplianceInstancesInstance>(map['instances'], (value) => SpokeLinkedRouterApplianceInstancesInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      siteToSiteDataTransfer: (map['siteToSiteDataTransfer'] as bool).input(),
    );
  }
}


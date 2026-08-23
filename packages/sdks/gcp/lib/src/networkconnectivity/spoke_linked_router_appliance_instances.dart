// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_linked_router_appliance_instances_instance.dart';

class SpokeLinkedRouterApplianceInstances {
  /// Dynamic routes overlapped/encompassed by exclude export ranges are excluded during export to hub.
  final pulumi.Input<List<String>>? excludeExportRanges;
  /// Hub routes overlapped/encompassed by exclude import ranges are excluded during import from hub.
  final pulumi.Input<List<String>>? excludeImportRanges;
  /// Dynamic routes fully encompassed by include export ranges are included during export to hub.
  final pulumi.Input<List<String>>? includeExportRanges;
  /// Hub routes fully encompassed by include import ranges are included during import from hub.
  /// "ALL_IPV4_RANGES" or IPv4 CIDR ranges are allowed.
  final pulumi.Input<List<String>>? includeImportRanges;
  /// The list of router appliance instances
  /// Structure is documented below.
  final pulumi.Input<List<SpokeLinkedRouterApplianceInstancesInstance>> instances;
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final pulumi.Input<bool> siteToSiteDataTransfer;

  /// Creates a new [SpokeLinkedRouterApplianceInstances].
  /// [excludeExportRanges] Dynamic routes overlapped/encompassed by exclude export ranges are excluded during export to hub.
  /// [excludeImportRanges] Hub routes overlapped/encompassed by exclude import ranges are excluded during import from hub.
  /// [includeExportRanges] Dynamic routes fully encompassed by include export ranges are included during export to hub.
  /// [includeImportRanges] Hub routes fully encompassed by include import ranges are included during import from hub.
  /// [instances] The list of router appliance instances
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  const SpokeLinkedRouterApplianceInstances({
    this.excludeExportRanges,
    this.excludeImportRanges,
    this.includeExportRanges,
    this.includeImportRanges,
    required this.instances,
    required this.siteToSiteDataTransfer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'excludeImportRanges': ?excludeImportRanges,
      'includeExportRanges': ?includeExportRanges,
      'includeImportRanges': ?includeImportRanges,
      'instances': pulumi.Input.mapInputValue<List<SpokeLinkedRouterApplianceInstancesInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<SpokeLinkedRouterApplianceInstancesInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteToSiteDataTransfer': siteToSiteDataTransfer,
    };
  }

  factory SpokeLinkedRouterApplianceInstances.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedRouterApplianceInstances(
      excludeExportRanges: (() { final guardedValue = map['excludeExportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeImportRanges: (() { final guardedValue = map['excludeImportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeExportRanges: (() { final guardedValue = map['includeExportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeImportRanges: (() { final guardedValue = map['includeImportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instances: pulumi.Input.fromValue(pulumi.Input.decodeList<SpokeLinkedRouterApplianceInstancesInstance>(map['instances']!, (value) => SpokeLinkedRouterApplianceInstancesInstance.fromMap((value as Map).cast<String, dynamic>()))),
      siteToSiteDataTransfer: pulumi.Input.fromValue(map['siteToSiteDataTransfer'] as bool),
    );
  }
}

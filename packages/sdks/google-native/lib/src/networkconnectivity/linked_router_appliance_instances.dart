// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_appliance_instance.dart';

/// A collection of router appliance instances. If you configure multiple router appliance instances to receive data from the same set of sites outside of Google Cloud, we recommend that you associate those instances with the same spoke.
class LinkedRouterApplianceInstances {
  /// The list of router appliance instances.
  final pulumi.Input<List<RouterApplianceInstance>>? instances;
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  final pulumi.Input<bool>? siteToSiteDataTransfer;

  /// Creates a new [LinkedRouterApplianceInstances].
  /// [instances] The list of router appliance instances.
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  const LinkedRouterApplianceInstances({
    this.instances,
    this.siteToSiteDataTransfer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?pulumi.Input.mapOptionalInputValue<List<RouterApplianceInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<RouterApplianceInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteToSiteDataTransfer': ?siteToSiteDataTransfer,
    };
  }

  factory LinkedRouterApplianceInstances.fromMap(Map<String, dynamic> map) {
    return LinkedRouterApplianceInstances(
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterApplianceInstance>(guardedValue, (value) => RouterApplianceInstance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      siteToSiteDataTransfer: (() { final guardedValue = map['siteToSiteDataTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

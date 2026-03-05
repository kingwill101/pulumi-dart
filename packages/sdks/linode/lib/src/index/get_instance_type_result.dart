// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_addon.dart';
import 'get_instance_type_price.dart';
import 'get_instance_type_region_price.dart';

/// Result data returned by getInstanceType.
class GetInstanceTypeResult {
  /// The number of VPUs this Linode Type offers.
  final int acceleratedDevices;
  final List<GetInstanceTypeAddon> addons;
  /// The class of the Linode Type. See all classes [here](https://techdocs.akamai.com/linode-api/reference/get-linode-type).
  final String class_;
  /// The Disk size, in MB, of the Linode Type
  final int disk;
  /// The ID representing the Linode Type
  final String id;
  /// The Linode Type's label is for display purposes only
  final String label;
  /// The amount of RAM included in this Linode Type.
  final int memory;
  /// The Mbits outbound bandwidth allocation.
  final int networkOut;
  final List<GetInstanceTypePrice> prices;
  final List<GetInstanceTypeRegionPrice> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final int transfer;
  /// The number of VCPU cores this Linode Type offers.
  final int vcpus;

  /// Creates a new [GetInstanceTypeResult].
  /// [acceleratedDevices] The number of VPUs this Linode Type offers.
  /// [addons] Required.
  /// [class_] The class of the Linode Type. See all classes [here](https://techdocs.akamai.com/linode-api/reference/get-linode-type).
  /// [disk] The Disk size, in MB, of the Linode Type
  /// [id] The ID representing the Linode Type
  /// [label] The Linode Type's label is for display purposes only
  /// [memory] The amount of RAM included in this Linode Type.
  /// [networkOut] The Mbits outbound bandwidth allocation.
  /// [prices] Required.
  /// [regionPrices] Required.
  /// [transfer] The monthly outbound transfer amount, in MB.
  /// [vcpus] The number of VCPU cores this Linode Type offers.
  GetInstanceTypeResult({
    required this.acceleratedDevices,
    required this.addons,
    required this.class_,
    required this.disk,
    required this.id,
    required this.label,
    required this.memory,
    required this.networkOut,
    required this.prices,
    required this.regionPrices,
    required this.transfer,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedDevices': acceleratedDevices,
      'addons': pulumi.Input.encodeList<GetInstanceTypeAddon, Map<String, dynamic>>(addons, (value) => value.toMap()),
      'class': class_,
      'disk': disk,
      'id': id,
      'label': label,
      'memory': memory,
      'networkOut': networkOut,
      'prices': pulumi.Input.encodeList<GetInstanceTypePrice, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'regionPrices': pulumi.Input.encodeList<GetInstanceTypeRegionPrice, Map<String, dynamic>>(regionPrices, (value) => value.toMap()),
      'transfer': transfer,
      'vcpus': vcpus,
    };
  }

  factory GetInstanceTypeResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeResult(
      acceleratedDevices: map['acceleratedDevices'] as int,
      addons: pulumi.Input.decodeList<GetInstanceTypeAddon>(map['addons']!, (value) => GetInstanceTypeAddon.fromMap((value as Map).cast<String, dynamic>())),
      class_: map['class'] as String,
      disk: map['disk'] as int,
      id: map['id'] as String,
      label: map['label'] as String,
      memory: map['memory'] as int,
      networkOut: map['networkOut'] as int,
      prices: pulumi.Input.decodeList<GetInstanceTypePrice>(map['prices']!, (value) => GetInstanceTypePrice.fromMap((value as Map).cast<String, dynamic>())),
      regionPrices: pulumi.Input.decodeList<GetInstanceTypeRegionPrice>(map['regionPrices']!, (value) => GetInstanceTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>())),
      transfer: map['transfer'] as int,
      vcpus: map['vcpus'] as int,
    );
  }
}


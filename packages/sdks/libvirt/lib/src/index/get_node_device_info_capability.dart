// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeDeviceInfoCapability {
  /// MAC address or device address.
  final pulumi.Input<String> address;
  /// Block device path (e.g., `/dev/sda`).
  final pulumi.Input<String> block;
  /// PCI/USB bus number.
  final pulumi.Input<double> bus;
  /// PCI class code (e.g., `0x030000` for VGA).
  final pulumi.Input<String> class_;
  /// USB device number.
  final pulumi.Input<double> deviceNumber;
  /// PCI domain number.
  final pulumi.Input<double> domain;
  /// Drive type (e.g., `disk`, `cdrom`).
  final pulumi.Input<String> driveType;
  /// PCI function number.
  final pulumi.Input<double> function;
  /// SCSI host number.
  final pulumi.Input<double> host;
  /// Network interface name (e.g., `eth0`).
  final pulumi.Input<String> interface;
  /// IOMMU group number (for PCI passthrough).
  final pulumi.Input<double> iommuGroup;
  /// Network link speed.
  final pulumi.Input<String> linkSpeed;
  /// Network link state (e.g., `up`, `down`).
  final pulumi.Input<String> linkState;
  /// Logical block size in bytes.
  final pulumi.Input<double> logicalBlockSize;
  /// SCSI LUN (Logical Unit Number).
  final pulumi.Input<double> lun;
  /// Device model name.
  final pulumi.Input<String> model;
  /// Number of blocks.
  final pulumi.Input<double> numBlocks;
  /// Product ID (vendor-specific identifier).
  final pulumi.Input<String> productId;
  /// Product name or description.
  final pulumi.Input<String> productName;
  /// SCSI device type.
  final pulumi.Input<String> scsiType;
  /// Device serial number.
  final pulumi.Input<String> serial;
  /// Storage capacity in bytes.
  final pulumi.Input<double> size;
  /// PCI slot number.
  final pulumi.Input<double> slot;
  /// SCSI target number.
  final pulumi.Input<double> target;
  /// Capability type (e.g., `pci`, `usb_device`, `net`, `storage`).
  final pulumi.Input<String> type;
  /// Vendor ID.
  final pulumi.Input<String> vendorId;
  /// Vendor name.
  final pulumi.Input<String> vendorName;

  /// Creates a new [GetNodeDeviceInfoCapability].
  /// [address] MAC address or device address.
  /// [block] Block device path (e.g., `/dev/sda`).
  /// [bus] PCI/USB bus number.
  /// [class_] PCI class code (e.g., `0x030000` for VGA).
  /// [deviceNumber] USB device number.
  /// [domain] PCI domain number.
  /// [driveType] Drive type (e.g., `disk`, `cdrom`).
  /// [function] PCI function number.
  /// [host] SCSI host number.
  /// [interface] Network interface name (e.g., `eth0`).
  /// [iommuGroup] IOMMU group number (for PCI passthrough).
  /// [linkSpeed] Network link speed.
  /// [linkState] Network link state (e.g., `up`, `down`).
  /// [logicalBlockSize] Logical block size in bytes.
  /// [lun] SCSI LUN (Logical Unit Number).
  /// [model] Device model name.
  /// [numBlocks] Number of blocks.
  /// [productId] Product ID (vendor-specific identifier).
  /// [productName] Product name or description.
  /// [scsiType] SCSI device type.
  /// [serial] Device serial number.
  /// [size] Storage capacity in bytes.
  /// [slot] PCI slot number.
  /// [target] SCSI target number.
  /// [type] Capability type (e.g., `pci`, `usb_device`, `net`, `storage`).
  /// [vendorId] Vendor ID.
  /// [vendorName] Vendor name.
  GetNodeDeviceInfoCapability({
    required this.address,
    required this.block,
    required this.bus,
    required this.class_,
    required this.deviceNumber,
    required this.domain,
    required this.driveType,
    required this.function,
    required this.host,
    required this.interface,
    required this.iommuGroup,
    required this.linkSpeed,
    required this.linkState,
    required this.logicalBlockSize,
    required this.lun,
    required this.model,
    required this.numBlocks,
    required this.productId,
    required this.productName,
    required this.scsiType,
    required this.serial,
    required this.size,
    required this.slot,
    required this.target,
    required this.type,
    required this.vendorId,
    required this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'block': block,
      'bus': bus,
      'class': class_,
      'deviceNumber': deviceNumber,
      'domain': domain,
      'driveType': driveType,
      'function': function,
      'host': host,
      'interface': interface,
      'iommuGroup': iommuGroup,
      'linkSpeed': linkSpeed,
      'linkState': linkState,
      'logicalBlockSize': logicalBlockSize,
      'lun': lun,
      'model': model,
      'numBlocks': numBlocks,
      'productId': productId,
      'productName': productName,
      'scsiType': scsiType,
      'serial': serial,
      'size': size,
      'slot': slot,
      'target': target,
      'type': type,
      'vendorId': vendorId,
      'vendorName': vendorName,
    };
  }

  factory GetNodeDeviceInfoCapability.fromMap(Map<String, dynamic> map) {
    return GetNodeDeviceInfoCapability(
      address: pulumi.Input.fromValue(map['address'] as String),
      block: pulumi.Input.fromValue(map['block'] as String),
      bus: pulumi.Input.fromValue(map['bus'] as double),
      class_: pulumi.Input.fromValue(map['class'] as String),
      deviceNumber: pulumi.Input.fromValue(map['deviceNumber'] as double),
      domain: pulumi.Input.fromValue(map['domain'] as double),
      driveType: pulumi.Input.fromValue(map['driveType'] as String),
      function: pulumi.Input.fromValue(map['function'] as double),
      host: pulumi.Input.fromValue(map['host'] as double),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      iommuGroup: pulumi.Input.fromValue(map['iommuGroup'] as double),
      linkSpeed: pulumi.Input.fromValue(map['linkSpeed'] as String),
      linkState: pulumi.Input.fromValue(map['linkState'] as String),
      logicalBlockSize: pulumi.Input.fromValue(map['logicalBlockSize'] as double),
      lun: pulumi.Input.fromValue(map['lun'] as double),
      model: pulumi.Input.fromValue(map['model'] as String),
      numBlocks: pulumi.Input.fromValue(map['numBlocks'] as double),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      scsiType: pulumi.Input.fromValue(map['scsiType'] as String),
      serial: pulumi.Input.fromValue(map['serial'] as String),
      size: pulumi.Input.fromValue(map['size'] as double),
      slot: pulumi.Input.fromValue(map['slot'] as double),
      target: pulumi.Input.fromValue(map['target'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
      vendorId: pulumi.Input.fromValue(map['vendorId'] as String),
      vendorName: pulumi.Input.fromValue(map['vendorName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetNodeDeviceInfoCapability {
  /// MAC address or device address.
  final String address;
  /// Block device path (e.g., `/dev/sda`).
  final String block;
  /// PCI/USB bus number.
  final double bus;
  /// PCI class code (e.g., `0x030000` for VGA).
  final String class_;
  /// USB device number.
  final double deviceNumber;
  /// PCI domain number.
  final double domain;
  /// Drive type (e.g., `disk`, `cdrom`).
  final String driveType;
  /// PCI function number.
  final double function;
  /// SCSI host number.
  final double host;
  /// Network interface name (e.g., `eth0`).
  final String interface;
  /// IOMMU group number (for PCI passthrough).
  final double iommuGroup;
  /// Network link speed.
  final String linkSpeed;
  /// Network link state (e.g., `up`, `down`).
  final String linkState;
  /// Logical block size in bytes.
  final double logicalBlockSize;
  /// SCSI LUN (Logical Unit Number).
  final double lun;
  /// Device model name.
  final String model;
  /// Number of blocks.
  final double numBlocks;
  /// Product ID (vendor-specific identifier).
  final String productId;
  /// Product name or description.
  final String productName;
  /// SCSI device type.
  final String scsiType;
  /// Device serial number.
  final String serial;
  /// Storage capacity in bytes.
  final double size;
  /// PCI slot number.
  final double slot;
  /// SCSI target number.
  final double target;
  /// Capability type (e.g., `pci`, `usb_device`, `net`, `storage`).
  final String type;
  /// Vendor ID.
  final String vendorId;
  /// Vendor name.
  final String vendorName;

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
      address: map['address'] as String,
      block: map['block'] as String,
      bus: map['bus'] as double,
      class_: map['class'] as String,
      deviceNumber: map['deviceNumber'] as double,
      domain: map['domain'] as double,
      driveType: map['driveType'] as String,
      function: map['function'] as double,
      host: map['host'] as double,
      interface: map['interface'] as String,
      iommuGroup: map['iommuGroup'] as double,
      linkSpeed: map['linkSpeed'] as String,
      linkState: map['linkState'] as String,
      logicalBlockSize: map['logicalBlockSize'] as double,
      lun: map['lun'] as double,
      model: map['model'] as String,
      numBlocks: map['numBlocks'] as double,
      productId: map['productId'] as String,
      productName: map['productName'] as String,
      scsiType: map['scsiType'] as String,
      serial: map['serial'] as String,
      size: map['size'] as double,
      slot: map['slot'] as double,
      target: map['target'] as double,
      type: map['type'] as String,
      vendorId: map['vendorId'] as String,
      vendorName: map['vendorName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_hostdev_usb_address.dart';
import 'domain_devices_interface_source_hostdev_usb_product.dart';
import 'domain_devices_interface_source_hostdev_usb_vendor.dart';

class DomainDevicesInterfaceSourceHostdevUsb {
  /// Defines the address configuration for the USB subsystem source.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdevUsbAddress>? address;
  /// Controls whether the guest can reset the USB device.
  final pulumi.Input<String>? guestReset;
  /// Identifies the vendor of the USB device.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdevUsbProduct>? product;
  /// Configures the startup policy for the USB subsystem device.
  final pulumi.Input<String>? startUpPolicy;
  /// Identifies the vendor of the USB device.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdevUsbVendor>? vendor;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevUsb].
  /// [address] Defines the address configuration for the USB subsystem source.
  /// [guestReset] Controls whether the guest can reset the USB device.
  /// [product] Identifies the vendor of the USB device.
  /// [startUpPolicy] Configures the startup policy for the USB subsystem device.
  /// [vendor] Identifies the vendor of the USB device.
  DomainDevicesInterfaceSourceHostdevUsb({
    this.address,
    this.guestReset,
    this.product,
    this.startUpPolicy,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdevUsbAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'guestReset': ?guestReset,
      'product': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdevUsbProduct, Map<String, dynamic>>(product, (value) => value.toMap()),
      'startUpPolicy': ?startUpPolicy,
      'vendor': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdevUsbVendor, Map<String, dynamic>>(vendor, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceHostdevUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevUsb(
      address: map['address'] == null ? null : (DomainDevicesInterfaceSourceHostdevUsbAddress.fromMap((map['address'] as Map).cast<String, dynamic>())).input(),
      guestReset: map['guestReset'] == null ? null : (map['guestReset'] as String).input(),
      product: map['product'] == null ? null : (DomainDevicesInterfaceSourceHostdevUsbProduct.fromMap((map['product'] as Map).cast<String, dynamic>())).input(),
      startUpPolicy: map['startUpPolicy'] == null ? null : (map['startUpPolicy'] as String).input(),
      vendor: map['vendor'] == null ? null : (DomainDevicesInterfaceSourceHostdevUsbVendor.fromMap((map['vendor'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


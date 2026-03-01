// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_hostdev_usb_address.dart';
import 'domain_devices_interface_source_hostdev_usb_product.dart';
import 'domain_devices_interface_source_hostdev_usb_vendor.dart';

class DomainDevicesInterfaceSourceHostdevUsb {
  /// Defines the address configuration for the USB subsystem source.
  final DomainDevicesInterfaceSourceHostdevUsbAddress? address;
  /// Controls whether the guest can reset the USB device.
  final String? guestReset;
  /// Identifies the vendor of the USB device.
  final DomainDevicesInterfaceSourceHostdevUsbProduct? product;
  /// Configures the startup policy for the USB subsystem device.
  final String? startUpPolicy;
  /// Identifies the vendor of the USB device.
  final DomainDevicesInterfaceSourceHostdevUsbVendor? vendor;

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
      'address': ?address == null ? null : address!.toMap(),
      'guestReset': ?guestReset,
      'product': ?product == null ? null : product!.toMap(),
      'startUpPolicy': ?startUpPolicy,
      'vendor': ?vendor == null ? null : vendor!.toMap(),
    };
  }

  factory DomainDevicesInterfaceSourceHostdevUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevUsb(
      address: map['address'] == null ? null : DomainDevicesInterfaceSourceHostdevUsbAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      guestReset: map['guestReset'] == null ? null : map['guestReset'] as String,
      product: map['product'] == null ? null : DomainDevicesInterfaceSourceHostdevUsbProduct.fromMap((map['product'] as Map).cast<String, dynamic>()),
      startUpPolicy: map['startUpPolicy'] == null ? null : map['startUpPolicy'] as String,
      vendor: map['vendor'] == null ? null : DomainDevicesInterfaceSourceHostdevUsbVendor.fromMap((map['vendor'] as Map).cast<String, dynamic>()),
    );
  }
}


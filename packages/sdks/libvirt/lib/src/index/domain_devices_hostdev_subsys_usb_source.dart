// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_usb_source_address.dart';
import 'domain_devices_hostdev_subsys_usb_source_product.dart';
import 'domain_devices_hostdev_subsys_usb_source_vendor.dart';

class DomainDevicesHostdevSubsysUsbSource {
  /// Defines the address configuration for the USB subsystem source.
  final DomainDevicesHostdevSubsysUsbSourceAddress? address;
  /// Controls whether the guest can reset the USB device.
  final String? guestReset;
  /// Identifies the vendor of the USB device.
  final DomainDevicesHostdevSubsysUsbSourceProduct? product;
  /// Configures the startup policy for the USB subsystem device.
  final String? startUpPolicy;
  /// Identifies the vendor of the USB device.
  final DomainDevicesHostdevSubsysUsbSourceVendor? vendor;

  /// Creates a new [DomainDevicesHostdevSubsysUsbSource].
  /// [address] Defines the address configuration for the USB subsystem source.
  /// [guestReset] Controls whether the guest can reset the USB device.
  /// [product] Identifies the vendor of the USB device.
  /// [startUpPolicy] Configures the startup policy for the USB subsystem device.
  /// [vendor] Identifies the vendor of the USB device.
  DomainDevicesHostdevSubsysUsbSource({
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

  factory DomainDevicesHostdevSubsysUsbSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysUsbSource(
      address: map['address'] == null ? null : DomainDevicesHostdevSubsysUsbSourceAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      guestReset: map['guestReset'] == null ? null : map['guestReset'] as String,
      product: map['product'] == null ? null : DomainDevicesHostdevSubsysUsbSourceProduct.fromMap((map['product'] as Map).cast<String, dynamic>()),
      startUpPolicy: map['startUpPolicy'] == null ? null : map['startUpPolicy'] as String,
      vendor: map['vendor'] == null ? null : DomainDevicesHostdevSubsysUsbSourceVendor.fromMap((map['vendor'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_usb_source_address.dart';
import 'domain_devices_hostdev_subsys_usb_source_product.dart';
import 'domain_devices_hostdev_subsys_usb_source_vendor.dart';

class DomainDevicesHostdevSubsysUsbSource {
  /// Defines the address configuration for the USB subsystem source.
  final pulumi.Input<DomainDevicesHostdevSubsysUsbSourceAddress>? address;

  /// Controls whether the guest can reset the USB device.
  final pulumi.Input<String>? guestReset;

  /// Identifies the vendor of the USB device.
  final pulumi.Input<DomainDevicesHostdevSubsysUsbSourceProduct>? product;

  /// Configures the startup policy for the USB subsystem device.
  final pulumi.Input<String>? startUpPolicy;

  /// Identifies the vendor of the USB device.
  final pulumi.Input<DomainDevicesHostdevSubsysUsbSourceVendor>? vendor;

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
      'address':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysUsbSourceAddress,
            Map<String, dynamic>
          >(address, (value) => value.toMap()),
      'guestReset': ?guestReset,
      'product':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysUsbSourceProduct,
            Map<String, dynamic>
          >(product, (value) => value.toMap()),
      'startUpPolicy': ?startUpPolicy,
      'vendor':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysUsbSourceVendor,
            Map<String, dynamic>
          >(vendor, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysUsbSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesHostdevSubsysUsbSource(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysUsbSourceAddress.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      guestReset: (() {
        final guardedValue = map['guestReset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      product: (() {
        final guardedValue = map['product'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysUsbSourceProduct.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startUpPolicy: (() {
        final guardedValue = map['startUpPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vendor: (() {
        final guardedValue = map['vendor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysUsbSourceVendor.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

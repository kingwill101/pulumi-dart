// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRedirFilterUsb {
  /// Controls whether the USB device is allowed for redirection.
  final pulumi.Input<String> allow;

  /// Specifies the USB class type for the redirection filter.
  final pulumi.Input<double>? class_;

  /// Sets the product ID of the USB device for the redirection filter.
  final pulumi.Input<double>? product;

  /// Specifies the vendor ID of the USB device for the redirection filter.
  final pulumi.Input<double>? vendor;

  /// Sets the version of the USB device for the redirection filter.
  final pulumi.Input<String>? version;

  /// Creates a new [DomainDevicesRedirFilterUsb].
  /// [allow] Controls whether the USB device is allowed for redirection.
  /// [class_] Specifies the USB class type for the redirection filter.
  /// [product] Sets the product ID of the USB device for the redirection filter.
  /// [vendor] Specifies the vendor ID of the USB device for the redirection filter.
  /// [version] Sets the version of the USB device for the redirection filter.
  DomainDevicesRedirFilterUsb({
    required this.allow,
    this.class_,
    this.product,
    this.vendor,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'class': ?class_,
      'product': ?product,
      'vendor': ?vendor,
      'version': ?version,
    };
  }

  factory DomainDevicesRedirFilterUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirFilterUsb(
      allow: pulumi.Input.fromValue(map['allow'] as String),
      class_: (() {
        final guardedValue = map['class'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      product: (() {
        final guardedValue = map['product'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      vendor: (() {
        final guardedValue = map['vendor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

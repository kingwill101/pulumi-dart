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
      allow: (map['allow'] as String).input(),
      class_: map['class'] == null ? null : (map['class']! as double).input(),
      product: map['product'] == null ? null : (map['product']! as double).input(),
      vendor: map['vendor'] == null ? null : (map['vendor']! as double).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}


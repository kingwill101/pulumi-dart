// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dimension for the page.
class GoogleCloudDocumentaiV1DocumentPageDimension {
  /// Page height.
  final pulumi.Input<double>? height;
  /// Dimension unit.
  final pulumi.Input<String>? unit;
  /// Page width.
  final pulumi.Input<double>? width;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDimension].
  /// [height] Page height.
  /// [unit] Dimension unit.
  /// [width] Page width.
  const GoogleCloudDocumentaiV1DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': ?height,
      'unit': ?unit,
      'width': ?width,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageDimension.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDimension(
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}


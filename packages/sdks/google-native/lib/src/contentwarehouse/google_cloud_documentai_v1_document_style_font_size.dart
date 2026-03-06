// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Font size with unit.
class GoogleCloudDocumentaiV1DocumentStyleFontSize {
  /// Font size for the text.
  final pulumi.Input<double>? size;
  /// Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  final pulumi.Input<String>? unit;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyleFontSize].
  /// [size] Font size for the text.
  /// [unit] Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  const GoogleCloudDocumentaiV1DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'unit': ?unit,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentStyleFontSize.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentStyleFontSize(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


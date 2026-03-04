// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_barcode.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// A detected barcode.
class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode {
  /// Detailed barcode information of the DetectedBarcode.
  final pulumi.Input<GoogleCloudDocumentaiV1Barcode>? barcode;

  /// Layout for DetectedBarcode.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? layout;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDetectedBarcode].
  /// [barcode] Detailed barcode information of the DetectedBarcode.
  /// [layout] Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode({
    this.barcode,
    this.layout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'barcode':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1Barcode,
            Map<String, dynamic>
          >(barcode, (value) => value.toMap()),
      'layout':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1DocumentPageLayout,
            Map<String, dynamic>
          >(layout, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedBarcode(
      barcode: (() {
        final guardedValue = map['barcode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1Barcode.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      layout: (() {
        final guardedValue = map['layout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

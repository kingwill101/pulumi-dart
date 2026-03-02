// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_barcode_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';

/// A detected barcode.
class GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse {
  /// Detailed barcode information of the DetectedBarcode.
  final pulumi.Input<GoogleCloudDocumentaiV1BarcodeResponse> barcode;
  /// Layout for DetectedBarcode.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> layout;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse].
  /// [barcode] Detailed barcode information of the DetectedBarcode.
  /// [layout] Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse({
    required this.barcode,
    required this.layout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'barcode': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1BarcodeResponse, Map<String, dynamic>>(barcode, (value) => value.toMap()),
      'layout': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(layout, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse(
      barcode: (GoogleCloudDocumentaiV1BarcodeResponse.fromMap((map['barcode'] as Map).cast<String, dynamic>())).input(),
      layout: (GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


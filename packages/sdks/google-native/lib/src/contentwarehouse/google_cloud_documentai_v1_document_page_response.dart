// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_block_response.dart';
import 'google_cloud_documentai_v1_document_page_detected_barcode_response.dart';
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_dimension_response.dart';
import 'google_cloud_documentai_v1_document_page_form_field_response.dart';
import 'google_cloud_documentai_v1_document_page_image_quality_scores_response.dart';
import 'google_cloud_documentai_v1_document_page_image_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_page_line_response.dart';
import 'google_cloud_documentai_v1_document_page_matrix_response.dart';
import 'google_cloud_documentai_v1_document_page_paragraph_response.dart';
import 'google_cloud_documentai_v1_document_page_symbol_response.dart';
import 'google_cloud_documentai_v1_document_page_table_response.dart';
import 'google_cloud_documentai_v1_document_page_token_response.dart';
import 'google_cloud_documentai_v1_document_page_visual_element_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPageResponse {
  /// A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageBlockResponse>> blocks;
  /// A list of detected barcodes.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse>> detectedBarcodes;
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>> detectedLanguages;
  /// Physical dimension of the page.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageDimensionResponse> dimension;
  /// A list of visually detected form fields on the page.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageFormFieldResponse>> formFields;
  /// Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageImageResponse> image;
  /// Image quality scores.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse> imageQualityScores;
  /// Layout for the page.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> layout;
  /// A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageLineResponse>> lines;
  /// 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  final pulumi.Input<int> pageNumber;
  /// A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageParagraphResponse>> paragraphs;
  /// The history of this page.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenanceResponse> provenance;
  /// A list of visually detected symbols on the page.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageSymbolResponse>> symbols;
  /// A list of visually detected tables on the page.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageTableResponse>> tables;
  /// A list of visually detected tokens on the page.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageTokenResponse>> tokens;
  /// Transformation matrices that were applied to the original document image to produce Page.image.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageMatrixResponse>> transforms;
  /// A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageVisualElementResponse>> visualElements;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageResponse].
  /// [blocks] A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  /// [detectedBarcodes] A list of detected barcodes.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [dimension] Physical dimension of the page.
  /// [formFields] A list of visually detected form fields on the page.
  /// [image] Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  /// [imageQualityScores] Image quality scores.
  /// [layout] Layout for the page.
  /// [lines] A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  /// [pageNumber] 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  /// [paragraphs] A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  /// [provenance] The history of this page.
  /// [symbols] A list of visually detected symbols on the page.
  /// [tables] A list of visually detected tables on the page.
  /// [tokens] A list of visually detected tokens on the page.
  /// [transforms] Transformation matrices that were applied to the original document image to produce Page.image.
  /// [visualElements] A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  const GoogleCloudDocumentaiV1DocumentPageResponse({
    required this.blocks,
    required this.detectedBarcodes,
    required this.detectedLanguages,
    required this.dimension,
    required this.formFields,
    required this.image,
    required this.imageQualityScores,
    required this.layout,
    required this.lines,
    required this.pageNumber,
    required this.paragraphs,
    required this.provenance,
    required this.symbols,
    required this.tables,
    required this.tokens,
    required this.transforms,
    required this.visualElements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocks': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageBlockResponse>, List<Map<String, dynamic>>>(blocks, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageBlockResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detectedBarcodes': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse>, List<Map<String, dynamic>>>(detectedBarcodes, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detectedLanguages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimension': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageDimensionResponse, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'formFields': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageFormFieldResponse>, List<Map<String, dynamic>>>(formFields, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageFormFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'imageQualityScores': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse, Map<String, dynamic>>(imageQualityScores, (value) => value.toMap()),
      'layout': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(layout, (value) => value.toMap()),
      'lines': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageLineResponse>, List<Map<String, dynamic>>>(lines, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageLineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pageNumber': pageNumber,
      'paragraphs': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageParagraphResponse>, List<Map<String, dynamic>>>(paragraphs, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageParagraphResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provenance': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentProvenanceResponse, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'symbols': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageSymbolResponse>, List<Map<String, dynamic>>>(symbols, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageSymbolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tables': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageTableResponse>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokens': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageTokenResponse>, List<Map<String, dynamic>>>(tokens, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageTokenResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transforms': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageMatrixResponse>, List<Map<String, dynamic>>>(transforms, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageMatrixResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'visualElements': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageVisualElementResponse>, List<Map<String, dynamic>>>(visualElements, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageVisualElementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageResponse(
      blocks: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageBlockResponse>(map['blocks']!, (value) => GoogleCloudDocumentaiV1DocumentPageBlockResponse.fromMap((value as Map).cast<String, dynamic>()))),
      detectedBarcodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse>(map['detectedBarcodes']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      detectedLanguages: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['detectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dimension: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageDimensionResponse.fromMap((map['dimension']! as Map).cast<String, dynamic>())),
      formFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageFormFieldResponse>(map['formFields']!, (value) => GoogleCloudDocumentaiV1DocumentPageFormFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      image: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>())),
      imageQualityScores: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse.fromMap((map['imageQualityScores']! as Map).cast<String, dynamic>())),
      layout: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout']! as Map).cast<String, dynamic>())),
      lines: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageLineResponse>(map['lines']!, (value) => GoogleCloudDocumentaiV1DocumentPageLineResponse.fromMap((value as Map).cast<String, dynamic>()))),
      pageNumber: pulumi.Input.fromValue(map['pageNumber'] as int),
      paragraphs: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageParagraphResponse>(map['paragraphs']!, (value) => GoogleCloudDocumentaiV1DocumentPageParagraphResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provenance: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap((map['provenance']! as Map).cast<String, dynamic>())),
      symbols: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageSymbolResponse>(map['symbols']!, (value) => GoogleCloudDocumentaiV1DocumentPageSymbolResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tables: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableResponse>(map['tables']!, (value) => GoogleCloudDocumentaiV1DocumentPageTableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tokens: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTokenResponse>(map['tokens']!, (value) => GoogleCloudDocumentaiV1DocumentPageTokenResponse.fromMap((value as Map).cast<String, dynamic>()))),
      transforms: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageMatrixResponse>(map['transforms']!, (value) => GoogleCloudDocumentaiV1DocumentPageMatrixResponse.fromMap((value as Map).cast<String, dynamic>()))),
      visualElements: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageVisualElementResponse>(map['visualElements']!, (value) => GoogleCloudDocumentaiV1DocumentPageVisualElementResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


/// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
enum DocumentRawDocumentFileType {
  rawDocumentFileTypeUnspecified("RAW_DOCUMENT_FILE_TYPE_UNSPECIFIED"),
  rawDocumentFileTypePdf("RAW_DOCUMENT_FILE_TYPE_PDF"),
  rawDocumentFileTypeDocx("RAW_DOCUMENT_FILE_TYPE_DOCX"),
  rawDocumentFileTypeXlsx("RAW_DOCUMENT_FILE_TYPE_XLSX"),
  rawDocumentFileTypePptx("RAW_DOCUMENT_FILE_TYPE_PPTX"),
  rawDocumentFileTypeText("RAW_DOCUMENT_FILE_TYPE_TEXT"),
  rawDocumentFileTypeTiff("RAW_DOCUMENT_FILE_TYPE_TIFF");

  const DocumentRawDocumentFileType(this.wireValue);
  final String wireValue;

  static DocumentRawDocumentFileType fromValue(String value) {
    for (final item in DocumentRawDocumentFileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DocumentRawDocumentFileType value: $value');
  }
}


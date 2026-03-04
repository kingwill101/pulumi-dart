/// The type of provenance operation.
enum GoogleCloudDocumentaiV1DocumentProvenanceType {
  operationTypeUnspecified("OPERATION_TYPE_UNSPECIFIED"),
  add("ADD"),
  remove("REMOVE"),
  update("UPDATE"),
  replace("REPLACE"),
  evalRequested("EVAL_REQUESTED"),
  evalApproved("EVAL_APPROVED"),
  evalSkipped("EVAL_SKIPPED");

  const GoogleCloudDocumentaiV1DocumentProvenanceType(this.wireValue);
  final String wireValue;

  static GoogleCloudDocumentaiV1DocumentProvenanceType fromValue(String value) {
    for (final item in GoogleCloudDocumentaiV1DocumentProvenanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDocumentaiV1DocumentProvenanceType value: $value',
    );
  }
}

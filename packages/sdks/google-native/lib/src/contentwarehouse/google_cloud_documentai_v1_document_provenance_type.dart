import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of provenance operation.
enum GoogleCloudDocumentaiV1DocumentProvenanceType implements pulumi.PulumiEnum<String> {
  operationTypeUnspecified("OPERATION_TYPE_UNSPECIFIED"),
  add("ADD"),
  remove("REMOVE"),
  update("UPDATE"),
  replace("REPLACE"),
  evalRequested("EVAL_REQUESTED"),
  evalApproved("EVAL_APPROVED"),
  evalSkipped("EVAL_SKIPPED");

  const GoogleCloudDocumentaiV1DocumentProvenanceType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDocumentaiV1DocumentProvenanceType fromValue(String value) {
    for (final item in GoogleCloudDocumentaiV1DocumentProvenanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDocumentaiV1DocumentProvenanceType value: $value');
  }
}

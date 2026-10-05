import 'package:pulumi/pulumi.dart' as pulumi;

/// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
enum OptionsPrimaryIds implements pulumi.PulumiEnum<String> {
  primaryIdsOptionUnspecified("PRIMARY_IDS_OPTION_UNSPECIFIED"),
  keep("KEEP"),
  regen("REGEN");

  const OptionsPrimaryIds(this.wireValue);
  @override
  final String wireValue;

  static OptionsPrimaryIds fromValue(String value) {
    for (final item in OptionsPrimaryIds.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptionsPrimaryIds value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// This field provides information about the type of file identified
enum FileNoteFileTypeContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  fileTypeUnspecified("FILE_TYPE_UNSPECIFIED"),
  source("SOURCE"),
  binary("BINARY"),
  archive("ARCHIVE"),
  application("APPLICATION"),
  audio("AUDIO"),
  image("IMAGE"),
  text("TEXT"),
  video("VIDEO"),
  documentation("DOCUMENTATION"),
  spdx("SPDX"),
  other("OTHER");

  const FileNoteFileTypeContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static FileNoteFileTypeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in FileNoteFileTypeContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileNoteFileTypeContaineranalysisV1beta1 value: $value');
  }
}

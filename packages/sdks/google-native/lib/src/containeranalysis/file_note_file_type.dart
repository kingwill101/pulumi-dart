/// This field provides information about the type of file identified
enum FileNoteFileType {
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

  const FileNoteFileType(this.wireValue);
  final String wireValue;

  static FileNoteFileType fromValue(String value) {
    for (final item in FileNoteFileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileNoteFileType value: $value');
  }
}


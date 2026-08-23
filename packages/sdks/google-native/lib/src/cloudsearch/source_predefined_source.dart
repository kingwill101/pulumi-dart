/// Predefined content source for Google Apps.
enum SourcePredefinedSource {
  none("NONE"),
  queryHistory("QUERY_HISTORY"),
  person("PERSON"),
  googleDrive("GOOGLE_DRIVE"),
  googleGmail("GOOGLE_GMAIL"),
  googleSites("GOOGLE_SITES"),
  googleGroups("GOOGLE_GROUPS"),
  googleCalendar("GOOGLE_CALENDAR"),
  googleKeep("GOOGLE_KEEP");

  const SourcePredefinedSource(this.wireValue);
  final String wireValue;

  static SourcePredefinedSource fromValue(String value) {
    for (final item in SourcePredefinedSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourcePredefinedSource value: $value');
  }
}

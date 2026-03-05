/// The application source, what it affects, e.g. Assessments
enum ApplicationSourceResourceType {
  valueAssessments("Assessments");

  const ApplicationSourceResourceType(this.wireValue);
  final String wireValue;

  static ApplicationSourceResourceType fromValue(String value) {
    for (final item in ApplicationSourceResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationSourceResourceType value: $value');
  }
}


/// The application source, what it affects, e.g. Assessments
enum ApplicationSourceResourceType {
  valueAssessments("Assessments");

  const ApplicationSourceResourceType(this.value);
  final String value;

  static ApplicationSourceResourceType fromValue(String value) {
    for (final item in ApplicationSourceResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationSourceResourceType value: $value');
  }
}


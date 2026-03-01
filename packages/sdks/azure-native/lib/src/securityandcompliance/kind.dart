/// The kind of the service.
enum Kind {
  valueFhir("fhir"),
  valueFhirStu3("fhir-Stu3"),
  valueFhirR4("fhir-R4");

  const Kind(this.value);
  final String value;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}


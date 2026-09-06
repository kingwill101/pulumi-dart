import 'package:pulumi/pulumi.dart' as pulumi;

/// The application source, what it affects, e.g. Assessments
enum ApplicationSourceResourceType implements pulumi.PulumiEnum<String> {
  assessments("Assessments");

  const ApplicationSourceResourceType(this.wireValue);
  @override
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

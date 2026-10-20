import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
enum RoutineLanguage implements pulumi.PulumiEnum<String> {
  languageUnspecified("LANGUAGE_UNSPECIFIED"),
  sql("SQL"),
  javascript("JAVASCRIPT"),
  python("PYTHON"),
  java("JAVA"),
  scala("SCALA");

  const RoutineLanguage(this.wireValue);
  @override
  final String wireValue;

  static RoutineLanguage fromValue(String value) {
    for (final item in RoutineLanguage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineLanguage value: $value');
  }
}

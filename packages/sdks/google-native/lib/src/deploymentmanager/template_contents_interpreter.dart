import 'package:pulumi/pulumi.dart' as pulumi;

/// Which interpreter (python or jinja) should be used during expansion.
enum TemplateContentsInterpreter implements pulumi.PulumiEnum<String> {
  unknownInterpreter("UNKNOWN_INTERPRETER"),
  python("PYTHON"),
  jinja("JINJA");

  const TemplateContentsInterpreter(this.wireValue);
  @override
  final String wireValue;

  static TemplateContentsInterpreter fromValue(String value) {
    for (final item in TemplateContentsInterpreter.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateContentsInterpreter value: $value');
  }
}

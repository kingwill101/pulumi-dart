import 'package:pulumi/pulumi.dart' as pulumi;

enum WordyEnum implements pulumi.PulumiEnum<String> {
  valueAValueWithSpaces("A Value With Spaces."),
  valueItSGotApostrophes("It's got apostrophes"),
  valueUNDERSCOREPREFIX("_UNDERSCORE_PREFIX"),
  named("plain");

  const WordyEnum(this.wireValue);
  @override
  final String wireValue;

  static WordyEnum fromValue(String value) {
    for (final item in WordyEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WordyEnum value: $value');
  }
}

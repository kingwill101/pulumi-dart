import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom image OS state.
enum ImageOSState implements pulumi.PulumiEnum<String> {
  valueGeneralized("Generalized"),
  valueSpecialized("Specialized");

  const ImageOSState(this.wireValue);
  @override
  final String wireValue;

  static ImageOSState fromValue(String value) {
    for (final item in ImageOSState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageOSState value: $value');
  }
}

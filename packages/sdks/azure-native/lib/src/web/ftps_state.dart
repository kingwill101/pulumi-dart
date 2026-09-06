import 'package:pulumi/pulumi.dart' as pulumi;

/// State of FTP / FTPS service
enum FtpsState implements pulumi.PulumiEnum<String> {
  allAllowed("AllAllowed"),
  ftpsOnly("FtpsOnly"),
  disabled("Disabled");

  const FtpsState(this.wireValue);
  @override
  final String wireValue;

  static FtpsState fromValue(String value) {
    for (final item in FtpsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FtpsState value: $value');
  }
}

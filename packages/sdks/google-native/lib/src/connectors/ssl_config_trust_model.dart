import 'package:pulumi/pulumi.dart' as pulumi;

/// Trust Model of the SSL connection
enum SslConfigTrustModel implements pulumi.PulumiEnum<String> {
  public("PUBLIC"),
  private("PRIVATE"),
  insecure("INSECURE");

  const SslConfigTrustModel(this.wireValue);
  @override
  final String wireValue;

  static SslConfigTrustModel fromValue(String value) {
    for (final item in SslConfigTrustModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigTrustModel value: $value');
  }
}

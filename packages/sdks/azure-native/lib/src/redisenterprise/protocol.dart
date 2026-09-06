import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
enum Protocol implements pulumi.PulumiEnum<String> {
  valueEncrypted("Encrypted"),
  valuePlaintext("Plaintext");

  const Protocol(this.wireValue);
  @override
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}

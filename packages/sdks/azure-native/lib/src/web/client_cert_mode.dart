/// This composes with ClientCertEnabled setting.
/// - ClientCertEnabled: false means ClientCert is ignored.
/// - ClientCertEnabled: true and ClientCertMode: Required means ClientCert is required.
/// - ClientCertEnabled: true and ClientCertMode: Optional means ClientCert is optional or accepted.
enum ClientCertMode {
  valueRequired("Required"),
  valueOptional("Optional"),
  valueOptionalInteractiveUser("OptionalInteractiveUser");

  const ClientCertMode(this.value);
  final String value;

  static ClientCertMode fromValue(String value) {
    for (final item in ClientCertMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientCertMode value: $value');
  }
}


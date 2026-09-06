import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication protocol that is used for the file share. Can only be specified when creating a share.
enum EnabledProtocols implements pulumi.PulumiEnum<String> {
  valueSMB("SMB"),
  valueNFS("NFS");

  const EnabledProtocols(this.wireValue);
  @override
  final String wireValue;

  static EnabledProtocols fromValue(String value) {
    for (final item in EnabledProtocols.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledProtocols value: $value');
  }
}

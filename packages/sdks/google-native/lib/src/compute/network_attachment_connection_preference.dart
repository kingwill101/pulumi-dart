import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkAttachmentConnectionPreference implements pulumi.PulumiEnum<String> {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreference(this.wireValue);
  @override
  final String wireValue;

  static NetworkAttachmentConnectionPreference fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAttachmentConnectionPreference value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkAttachmentConnectionPreferenceComputeBeta implements pulumi.PulumiEnum<String> {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreferenceComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NetworkAttachmentConnectionPreferenceComputeBeta fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreferenceComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAttachmentConnectionPreferenceComputeBeta value: $value');
  }
}

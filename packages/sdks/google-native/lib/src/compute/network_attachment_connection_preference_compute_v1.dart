import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkAttachmentConnectionPreferenceComputeV1 implements pulumi.PulumiEnum<String> {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreferenceComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NetworkAttachmentConnectionPreferenceComputeV1 fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreferenceComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAttachmentConnectionPreferenceComputeV1 value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// The intent.
enum Intent implements pulumi.PulumiEnum<String> {
  nOTSPECIFIED("NOT_SPECIFIED"),
  lOWPRIVILEGE("LOW_PRIVILEGE"),
  dEFERREDACCESSCHECK("DEFERRED_ACCESS_CHECK"),
  rPCONTRACT("RP_CONTRACT");

  const Intent(this.wireValue);
  @override
  final String wireValue;

  static Intent fromValue(String value) {
    for (final item in Intent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Intent value: $value');
  }
}

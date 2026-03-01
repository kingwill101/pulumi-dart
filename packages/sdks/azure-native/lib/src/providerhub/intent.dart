/// The intent.
enum Intent {
  nOTSPECIFIED("NOT_SPECIFIED"),
  lOWPRIVILEGE("LOW_PRIVILEGE"),
  dEFERREDACCESSCHECK("DEFERRED_ACCESS_CHECK"),
  rPCONTRACT("RP_CONTRACT");

  const Intent(this.value);
  final String value;

  static Intent fromValue(String value) {
    for (final item in Intent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Intent value: $value');
  }
}


/// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
enum PhraseMatcherRoleMatch {
  roleUnspecified("ROLE_UNSPECIFIED"),
  humanAgent("HUMAN_AGENT"),
  automatedAgent("AUTOMATED_AGENT"),
  endUser("END_USER"),
  anyAgent("ANY_AGENT");

  const PhraseMatcherRoleMatch(this.wireValue);
  final String wireValue;

  static PhraseMatcherRoleMatch fromValue(String value) {
    for (final item in PhraseMatcherRoleMatch.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PhraseMatcherRoleMatch value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
enum ParticipantRole implements pulumi.PulumiEnum<String> {
  roleUnspecified("ROLE_UNSPECIFIED"),
  humanAgent("HUMAN_AGENT"),
  automatedAgent("AUTOMATED_AGENT"),
  endUser("END_USER");

  const ParticipantRole(this.wireValue);
  @override
  final String wireValue;

  static ParticipantRole fromValue(String value) {
    for (final item in ParticipantRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParticipantRole value: $value');
  }
}

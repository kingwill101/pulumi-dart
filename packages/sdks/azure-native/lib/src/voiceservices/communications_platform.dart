/// Available platform types.
enum CommunicationsPlatform {
  operatorConnect("OperatorConnect"),
  teamsPhoneMobile("TeamsPhoneMobile"),
  teamsDirectRouting("TeamsDirectRouting");

  const CommunicationsPlatform(this.value);
  final String value;

  static CommunicationsPlatform fromValue(String value) {
    for (final item in CommunicationsPlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommunicationsPlatform value: $value');
  }
}


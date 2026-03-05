/// Available platform types.
enum CommunicationsPlatform {
  operatorConnect("OperatorConnect"),
  teamsPhoneMobile("TeamsPhoneMobile"),
  teamsDirectRouting("TeamsDirectRouting");

  const CommunicationsPlatform(this.wireValue);
  final String wireValue;

  static CommunicationsPlatform fromValue(String value) {
    for (final item in CommunicationsPlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommunicationsPlatform value: $value');
  }
}


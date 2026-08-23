// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentHandoffConfigLivePersonConfig {
  /// Account number of the LivePerson account to connect.
  final pulumi.Input<String> accountNumber;

  /// Creates a new [ConversationProfileHumanAgentHandoffConfigLivePersonConfig].
  /// [accountNumber] Account number of the LivePerson account to connect.
  const ConversationProfileHumanAgentHandoffConfigLivePersonConfig({
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': accountNumber,
    };
  }

  factory ConversationProfileHumanAgentHandoffConfigLivePersonConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentHandoffConfigLivePersonConfig(
      accountNumber: pulumi.Input.fromValue(map['accountNumber'] as String),
    );
  }
}

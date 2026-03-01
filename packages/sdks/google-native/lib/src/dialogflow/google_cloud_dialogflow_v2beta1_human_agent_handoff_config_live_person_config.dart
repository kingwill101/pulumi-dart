// ignore_for_file: unused_element, unnecessary_cast


/// Configuration specific to LivePerson (https://www.liveperson.com).
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig {
  /// Account number of the LivePerson account to connect. This is the account number you input at the login page.
  final String accountNumber;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig].
  /// [accountNumber] Account number of the LivePerson account to connect. This is the account number you input at the login page.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig({
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': accountNumber,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig(
      accountNumber: map['accountNumber'] as String,
    );
  }
}


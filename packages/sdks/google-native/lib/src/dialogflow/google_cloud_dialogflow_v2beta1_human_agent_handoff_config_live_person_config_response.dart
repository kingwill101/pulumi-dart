// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration specific to LivePerson (https://www.liveperson.com).
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse {
  /// Account number of the LivePerson account to connect. This is the account number you input at the login page.
  final pulumi.Input<String> accountNumber;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse].
  /// [accountNumber] Account number of the LivePerson account to connect. This is the account number you input at the login page.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse({
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': accountNumber,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse(
      accountNumber: (map['accountNumber'] as String).input(),
    );
  }
}


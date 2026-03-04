// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration specific to LivePerson (https://www.liveperson.com).
class GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse {
  /// Account number of the LivePerson account to connect. This is the account number you input at the login page.
  final pulumi.Input<String> accountNumber;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse].
  /// [accountNumber] Account number of the LivePerson account to connect. This is the account number you input at the login page.
  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse({
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountNumber': accountNumber};
  }

  factory GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse(
      accountNumber: pulumi.Input.fromValue(map['accountNumber'] as String),
    );
  }
}

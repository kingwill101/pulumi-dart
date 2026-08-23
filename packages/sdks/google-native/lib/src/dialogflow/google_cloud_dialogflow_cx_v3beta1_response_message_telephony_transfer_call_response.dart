// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
class GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCallResponse {
  /// Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCallResponse].
  /// [phoneNumber] Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  const GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCallResponse({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCallResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCallResponse(
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}

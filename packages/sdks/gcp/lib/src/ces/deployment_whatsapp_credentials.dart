// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentWhatsappCredentials {
  /// The Meta auth code provided by the embedded signup flow.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? authCode;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The Meta auth code provided by the embedded signup flow.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `authCode` or `authCodeWo` can only be set.
  final pulumi.Input<String?>? authCodeWo;
  /// Triggers update of `authCodeWo` write-only. Increment this value when an update to `authCodeWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? authCodeWoVersion;
  /// The Business Account ID to use for the phone number.
  final pulumi.Input<String> businessAccountId;
  /// The Conversation Profile ID to use for the deployment.
  final pulumi.Input<String?>? conversationProfileId;
  /// The phone number to register with WhatsApp.
  final pulumi.Input<String> phoneNumber;
  /// The 6-digit PIN created by the user for two-step verification.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? pin;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The 6-digit PIN created by the user for two-step verification.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `pin` or `pinWo` can only be set.
  final pulumi.Input<String?>? pinWo;
  /// Triggers update of `pinWo` write-only. Increment this value when an update to `pinWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? pinWoVersion;
  /// The WhatsApp Business Account ID.
  final pulumi.Input<String> wabaId;

  /// Creates a new [DeploymentWhatsappCredentials].
  /// [authCode] The Meta auth code provided by the embedded signup flow.
  /// [authCodeWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [authCodeWoVersion] Triggers update of `authCodeWo` write-only. Increment this value when an update to `authCodeWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [businessAccountId] The Business Account ID to use for the phone number.
  /// [conversationProfileId] The Conversation Profile ID to use for the deployment.
  /// [phoneNumber] The phone number to register with WhatsApp.
  /// [pin] The 6-digit PIN created by the user for two-step verification.
  /// [pinWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [pinWoVersion] Triggers update of `pinWo` write-only. Increment this value when an update to `pinWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [wabaId] The WhatsApp Business Account ID.
  const DeploymentWhatsappCredentials({
    this.authCode,
    this.authCodeWo,
    this.authCodeWoVersion,
    required this.businessAccountId,
    this.conversationProfileId,
    required this.phoneNumber,
    this.pin,
    this.pinWo,
    this.pinWoVersion,
    required this.wabaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'authCodeWo': ?authCodeWo,
      'authCodeWoVersion': ?authCodeWoVersion,
      'businessAccountId': businessAccountId,
      'conversationProfileId': ?conversationProfileId,
      'phoneNumber': phoneNumber,
      'pin': ?pin,
      'pinWo': ?pinWo,
      'pinWoVersion': ?pinWoVersion,
      'wabaId': wabaId,
    };
  }

  factory DeploymentWhatsappCredentials.fromMap(Map<String, dynamic> map) {
    return DeploymentWhatsappCredentials(
      authCode: (() { final guardedValue = map['authCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authCodeWo: (() { final guardedValue = map['authCodeWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authCodeWoVersion: (() { final guardedValue = map['authCodeWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessAccountId: pulumi.Input.fromValue(map['businessAccountId'] as String),
      conversationProfileId: (() { final guardedValue = map['conversationProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      pin: (() { final guardedValue = map['pin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pinWo: (() { final guardedValue = map['pinWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pinWoVersion: (() { final guardedValue = map['pinWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wabaId: pulumi.Input.fromValue(map['wabaId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentInstagramCredentials {
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
  /// The Conversation Profile ID to use for the deployment.
  final pulumi.Input<String?>? conversationProfileId;

  /// Creates a new [DeploymentInstagramCredentials].
  /// [authCode] The Meta auth code provided by the embedded signup flow.
  /// [authCodeWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [authCodeWoVersion] Triggers update of `authCodeWo` write-only. Increment this value when an update to `authCodeWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [conversationProfileId] The Conversation Profile ID to use for the deployment.
  const DeploymentInstagramCredentials({
    this.authCode,
    this.authCodeWo,
    this.authCodeWoVersion,
    this.conversationProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'authCodeWo': ?authCodeWo,
      'authCodeWoVersion': ?authCodeWoVersion,
      'conversationProfileId': ?conversationProfileId,
    };
  }

  factory DeploymentInstagramCredentials.fromMap(Map<String, dynamic> map) {
    return DeploymentInstagramCredentials(
      authCode: (() { final guardedValue = map['authCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authCodeWo: (() { final guardedValue = map['authCodeWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authCodeWoVersion: (() { final guardedValue = map['authCodeWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conversationProfileId: (() { final guardedValue = map['conversationProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

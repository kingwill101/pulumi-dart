// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue {
  /// The plain text of the client secret value.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? plainText;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The plain text of the client secret value.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `plainText` or `plainTextWo` can only be set.
  final pulumi.Input<String>? plainTextWo;
  /// Triggers update of `plainTextWo` write-only. Increment this value when an update to `plainTextWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? plainTextWoVersion;
  /// (Output)
  /// A thumbprint to represent the current client secret value.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue].
  /// [plainText] The plain text of the client secret value.
  /// [plainTextWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [plainTextWoVersion] Triggers update of `plainTextWo` write-only. Increment this value when an update to `plainTextWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [thumbprint] (Output)
  const WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue({
    this.plainText,
    this.plainTextWo,
    this.plainTextWoVersion,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plainText': ?plainText,
      'plainTextWo': ?plainTextWo,
      'plainTextWoVersion': ?plainTextWoVersion,
      'thumbprint': ?thumbprint,
    };
  }

  factory WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue(
      plainText: (() { final guardedValue = map['plainText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plainTextWo: (() { final guardedValue = map['plainTextWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plainTextWoVersion: (() { final guardedValue = map['plainTextWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

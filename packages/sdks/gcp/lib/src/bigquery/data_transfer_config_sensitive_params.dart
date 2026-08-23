// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTransferConfigSensitiveParams {
  /// The Secret Access Key of the AWS account transferring data from.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secretAccessKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The Secret Access Key of the AWS account transferring data from.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `secretAccessKey` or `secretAccessKeyWo` can only be set.
  final pulumi.Input<String>? secretAccessKeyWo;
  /// The version of the sensitive params - used to trigger updates of the write-only params. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<int>? secretAccessKeyWoVersion;

  /// Creates a new [DataTransferConfigSensitiveParams].
  /// [secretAccessKey] The Secret Access Key of the AWS account transferring data from.
  /// [secretAccessKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [secretAccessKeyWoVersion] The version of the sensitive params - used to trigger updates of the write-only params. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const DataTransferConfigSensitiveParams({
    this.secretAccessKey,
    this.secretAccessKeyWo,
    this.secretAccessKeyWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretAccessKey': ?secretAccessKey,
      'secretAccessKeyWo': ?secretAccessKeyWo,
      'secretAccessKeyWoVersion': ?secretAccessKeyWoVersion,
    };
  }

  factory DataTransferConfigSensitiveParams.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigSensitiveParams(
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKeyWo: (() { final guardedValue = map['secretAccessKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKeyWoVersion: (() { final guardedValue = map['secretAccessKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

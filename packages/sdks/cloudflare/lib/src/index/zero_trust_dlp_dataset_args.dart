// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_dataset_zero_trust_dlp_dataset_args_doc}
/// The set of arguments for ZeroTrustDlpDataset.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_dataset_zero_trust_dlp_dataset_args_doc}
class ZeroTrustDlpDatasetArgs {
  final pulumi.Input<String> accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if `secret` is true or undefined
  final pulumi.Input<bool?>? caseSensitive;
  final pulumi.Input<String?>? datasetId;
  /// The description of the dataset.
  final pulumi.Input<String?>? description;
  /// Dataset encoding version
  final pulumi.Input<int?>? encodingVersion;
  final pulumi.Input<String> name;
  /// Generate a secret dataset.
  ///
  /// If true, the response will include a secret to use with the EDM encoder.
  /// If false, the response has no secret and the dataset is uploaded in plaintext.
  final pulumi.Input<bool?>? secret;

  /// Creates a new [ZeroTrustDlpDatasetArgs].
  /// [accountId] Required.
  /// [caseSensitive] Only applies to custom word lists.
  /// [datasetId] Optional.
  /// [description] The description of the dataset.
  /// [encodingVersion] Dataset encoding version
  /// [name] Required.
  /// [secret] Generate a secret dataset.
  const ZeroTrustDlpDatasetArgs({
    required this.accountId,
    this.caseSensitive,
    this.datasetId,
    this.description,
    this.encodingVersion,
    required this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'caseSensitive': ?caseSensitive,
      'datasetId': ?datasetId,
      'description': ?description,
      'encodingVersion': ?encodingVersion,
      'name': name,
      'secret': ?secret,
    };
  }

  factory ZeroTrustDlpDatasetArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDatasetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingVersion: (() { final guardedValue = map['encodingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

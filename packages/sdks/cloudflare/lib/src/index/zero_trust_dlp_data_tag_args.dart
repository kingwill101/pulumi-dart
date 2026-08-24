// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_data_tag_zero_trust_dlp_data_tag_args_doc}
/// The set of arguments for ZeroTrustDlpDataTag.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_data_tag_zero_trust_dlp_data_tag_args_doc}
class ZeroTrustDlpDataTagArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> categoryId;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustDlpDataTagArgs].
  /// [accountId] Required.
  /// [categoryId] Required.
  /// [description] Optional.
  /// [name] Required.
  const ZeroTrustDlpDataTagArgs({
    required this.accountId,
    required this.categoryId,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'categoryId': categoryId,
      'description': ?description,
      'name': name,
    };
  }

  factory ZeroTrustDlpDataTagArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataTagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      categoryId: pulumi.Input.fromValue(map['categoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

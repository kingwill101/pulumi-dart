// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_key_args_doc}
class GetKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? publicKeyType;
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [GetKeyArgs].
  /// [keyId] Required.
  /// [project] Optional.
  /// [publicKeyType] Optional.
  /// [serviceAccountId] Required.
  GetKeyArgs({
    required this.keyId,
    this.project,
    this.publicKeyType,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'project': ?project,
      'publicKeyType': ?publicKeyType,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyId: (map['keyId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicKeyType: map['publicKeyType'] == null ? null : (map['publicKeyType'] as String).input(),
      serviceAccountId: (map['serviceAccountId'] as String).input(),
    );
  }
}


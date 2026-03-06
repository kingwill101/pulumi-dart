// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_algorithm.dart';
import 'key_private_key_type.dart';

/// {@template pulumi_iam_v1_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_key_args_doc}
class KeyArgs {
  /// Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
  final pulumi.Input<KeyKeyAlgorithm>? keyAlgorithm;
  /// The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
  final pulumi.Input<KeyPrivateKeyType>? privateKeyType;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [KeyArgs].
  /// [keyAlgorithm] Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
  /// [privateKeyType] The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
  /// [project] Optional.
  /// [serviceAccountId] Required.
  const KeyArgs({
    this.keyAlgorithm,
    this.privateKeyType,
    this.project,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyAlgorithm': ?pulumi.Input.mapOptionalInputValue<KeyKeyAlgorithm, String>(keyAlgorithm, (value) => value.wireValue),
      'privateKeyType': ?pulumi.Input.mapOptionalInputValue<KeyPrivateKeyType, String>(privateKeyType, (value) => value.wireValue),
      'project': ?project,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyKeyAlgorithm.fromValue(guardedValue as String)); })(),
      privateKeyType: (() { final guardedValue = map['privateKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyPrivateKeyType.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: pulumi.Input.fromValue(map['serviceAccountId'] as String),
    );
  }
}


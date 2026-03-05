// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keymanager_get_secret_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_keymanager_get_secret_get_secret_args_doc}
class GetSecretArgs {
  /// Select the Secret with an ACL that contains the user.
  /// Project scope is ignored. Defaults to `false`.
  final pulumi.Input<bool>? aclOnly;
  /// The Secret algorithm.
  final pulumi.Input<String>? algorithm;
  /// The Secret bit length.
  final pulumi.Input<int>? bitLength;
  /// Date filter to select the Secret with
  /// created matching the specified criteria. See Date Filters below for more
  /// detail.
  final pulumi.Input<String>? createdAtFilter;
  /// Date filter to select the Secret with
  /// expiration matching the specified criteria. See Date Filters below for more
  /// detail.
  final pulumi.Input<String>? expirationFilter;
  /// The Secret mode.
  final pulumi.Input<String>? mode;
  /// The Secret name.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to fetch a secret. If omitted, the `region`
  /// argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The Secret type. For more information see
  /// [Secret types](https://docs.openstack.org/barbican/latest/api/reference/secret_types.html).
  final pulumi.Input<String>? secretType;
  /// Date filter to select the Secret with
  /// updated matching the specified criteria. See Date Filters below for more
  /// detail.
  final pulumi.Input<String>? updatedAtFilter;

  /// Creates a new [GetSecretArgs].
  /// [aclOnly] Select the Secret with an ACL that contains the user.
  /// [algorithm] The Secret algorithm.
  /// [bitLength] The Secret bit length.
  /// [createdAtFilter] Date filter to select the Secret with
  /// [expirationFilter] Date filter to select the Secret with
  /// [mode] The Secret mode.
  /// [name] The Secret name.
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [secretType] The Secret type. For more information see
  /// [updatedAtFilter] Date filter to select the Secret with
  GetSecretArgs({
    this.aclOnly,
    this.algorithm,
    this.bitLength,
    this.createdAtFilter,
    this.expirationFilter,
    this.mode,
    this.name,
    this.region,
    this.secretType,
    this.updatedAtFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclOnly': ?aclOnly,
      'algorithm': ?algorithm,
      'bitLength': ?bitLength,
      'createdAtFilter': ?createdAtFilter,
      'expirationFilter': ?expirationFilter,
      'mode': ?mode,
      'name': ?name,
      'region': ?region,
      'secretType': ?secretType,
      'updatedAtFilter': ?updatedAtFilter,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      aclOnly: (() { final guardedValue = map['aclOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitLength: (() { final guardedValue = map['bitLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAtFilter: (() { final guardedValue = map['createdAtFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationFilter: (() { final guardedValue = map['expirationFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretType: (() { final guardedValue = map['secretType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAtFilter: (() { final guardedValue = map['updatedAtFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
    pulumi.Output<bool>? aclOnly,
    pulumi.Output<String>? algorithm,
    pulumi.Output<int>? bitLength,
    pulumi.Output<String>? createdAtFilter,
    pulumi.Output<String>? expirationFilter,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretType,
    pulumi.Output<String>? updatedAtFilter,
  }) :
      aclOnly = pulumi.Input.asOptionalInput<bool>(aclOnly),
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      bitLength = pulumi.Input.asOptionalInput<int>(bitLength),
      createdAtFilter = pulumi.Input.asOptionalInput<String>(createdAtFilter),
      expirationFilter = pulumi.Input.asOptionalInput<String>(expirationFilter),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretType = pulumi.Input.asOptionalInput<String>(secretType),
      updatedAtFilter = pulumi.Input.asOptionalInput<String>(updatedAtFilter);

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
      aclOnly: map['aclOnly'] == null ? null : pulumi.Output.create<bool>(map['aclOnly'] as bool),
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      bitLength: map['bitLength'] == null ? null : pulumi.Output.create<int>(map['bitLength'] as int),
      createdAtFilter: map['createdAtFilter'] == null ? null : pulumi.Output.create<String>(map['createdAtFilter'] as String),
      expirationFilter: map['expirationFilter'] == null ? null : pulumi.Output.create<String>(map['expirationFilter'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretType: map['secretType'] == null ? null : pulumi.Output.create<String>(map['secretType'] as String),
      updatedAtFilter: map['updatedAtFilter'] == null ? null : pulumi.Output.create<String>(map['updatedAtFilter'] as String),
    );
  }
}


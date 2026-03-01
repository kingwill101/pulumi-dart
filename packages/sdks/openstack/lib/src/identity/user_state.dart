// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_multi_factor_auth_rule.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The default project this user belongs to.
  final pulumi.Input<String>? defaultProjectId;
  /// A description of the user.
  final pulumi.Input<String>? description;
  /// The domain this user belongs to.
  final pulumi.Input<String>? domainId;
  /// Whether the user is enabled or disabled. Valid
  /// values are `true` and `false`.
  final pulumi.Input<bool>? enabled;
  /// Free-form key/value pairs of extra information.
  final pulumi.Input<Map<String, String>>? extra;
  /// User will not have to
  /// change their password upon first use. Valid values are `true` and `false`.
  final pulumi.Input<bool>? ignoreChangePasswordUponFirstUse;
  /// User will not have a failure
  /// lockout placed on their account. Valid values are `true` and `false`.
  final pulumi.Input<bool>? ignoreLockoutFailureAttempts;
  /// User's password will not expire.
  /// Valid values are `true` and `false`.
  final pulumi.Input<bool>? ignorePasswordExpiry;
  /// Whether to enable multi-factor
  /// authentication. Valid values are `true` and `false`.
  final pulumi.Input<bool>? multiFactorAuthEnabled;
  /// A multi-factor authentication rule.
  /// The structure is documented below. Please see the
  /// [Ocata release notes](https://docs.openstack.org/releasenotes/keystone/ocata.html)
  /// for more information on how to use mulit-factor rules.
  final pulumi.Input<List<UserMultiFactorAuthRule>>? multiFactorAuthRules;
  /// The name of the user.
  final pulumi.Input<String>? name;
  /// The password for the user.
  final pulumi.Input<String>? password;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new User.
  final pulumi.Input<String>? region;

  /// Creates a new [UserState].
  /// [defaultProjectId] The default project this user belongs to.
  /// [description] A description of the user.
  /// [domainId] The domain this user belongs to.
  /// [enabled] Whether the user is enabled or disabled. Valid
  /// [extra] Free-form key/value pairs of extra information.
  /// [ignoreChangePasswordUponFirstUse] User will not have to
  /// [ignoreLockoutFailureAttempts] User will not have a failure
  /// [ignorePasswordExpiry] User's password will not expire.
  /// [multiFactorAuthEnabled] Whether to enable multi-factor
  /// [multiFactorAuthRules] A multi-factor authentication rule.
  /// [name] The name of the user.
  /// [password] The password for the user.
  /// [region] The region in which to obtain the V3 Keystone client.
  UserState({
    pulumi.Output<String>? defaultProjectId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<Map<String, String>>? extra,
    pulumi.Output<bool>? ignoreChangePasswordUponFirstUse,
    pulumi.Output<bool>? ignoreLockoutFailureAttempts,
    pulumi.Output<bool>? ignorePasswordExpiry,
    pulumi.Output<bool>? multiFactorAuthEnabled,
    pulumi.Output<List<UserMultiFactorAuthRule>>? multiFactorAuthRules,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? region,
  }) :
      defaultProjectId = pulumi.Input.asOptionalInput<String>(defaultProjectId),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      extra = pulumi.Input.asOptionalInput<Map<String, String>>(extra),
      ignoreChangePasswordUponFirstUse = pulumi.Input.asOptionalInput<bool>(ignoreChangePasswordUponFirstUse),
      ignoreLockoutFailureAttempts = pulumi.Input.asOptionalInput<bool>(ignoreLockoutFailureAttempts),
      ignorePasswordExpiry = pulumi.Input.asOptionalInput<bool>(ignorePasswordExpiry),
      multiFactorAuthEnabled = pulumi.Input.asOptionalInput<bool>(multiFactorAuthEnabled),
      multiFactorAuthRules = pulumi.Input.asOptionalInput<List<UserMultiFactorAuthRule>>(multiFactorAuthRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultProjectId': ?defaultProjectId,
      'description': ?description,
      'domainId': ?domainId,
      'enabled': ?enabled,
      'extra': ?extra,
      'ignoreChangePasswordUponFirstUse': ?ignoreChangePasswordUponFirstUse,
      'ignoreLockoutFailureAttempts': ?ignoreLockoutFailureAttempts,
      'ignorePasswordExpiry': ?ignorePasswordExpiry,
      'multiFactorAuthEnabled': ?multiFactorAuthEnabled,
      'multiFactorAuthRules': ?pulumi.Input.mapOptionalInputValue<List<UserMultiFactorAuthRule>, List<Map<String, dynamic>>>(multiFactorAuthRules, (value) => pulumi.Input.encodeList<UserMultiFactorAuthRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'password': ?password,
      'region': ?region,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      defaultProjectId: map['defaultProjectId'] == null ? null : pulumi.Output.create<String>(map['defaultProjectId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      extra: map['extra'] == null ? null : pulumi.Output.create<Map<String, String>>((map['extra'] as Map).cast<String, String>()),
      ignoreChangePasswordUponFirstUse: map['ignoreChangePasswordUponFirstUse'] == null ? null : pulumi.Output.create<bool>(map['ignoreChangePasswordUponFirstUse'] as bool),
      ignoreLockoutFailureAttempts: map['ignoreLockoutFailureAttempts'] == null ? null : pulumi.Output.create<bool>(map['ignoreLockoutFailureAttempts'] as bool),
      ignorePasswordExpiry: map['ignorePasswordExpiry'] == null ? null : pulumi.Output.create<bool>(map['ignorePasswordExpiry'] as bool),
      multiFactorAuthEnabled: map['multiFactorAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['multiFactorAuthEnabled'] as bool),
      multiFactorAuthRules: map['multiFactorAuthRules'] == null ? null : pulumi.Output.create<List<UserMultiFactorAuthRule>>(pulumi.Input.decodeList<UserMultiFactorAuthRule>(map['multiFactorAuthRules'], (value) => UserMultiFactorAuthRule.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


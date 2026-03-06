// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_multi_factor_auth_rule.dart';

/// {@template pulumi_identity_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_identity_user_user_args_doc}
class UserArgs {
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

  /// Creates a new [UserArgs].
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
  const UserArgs({
    this.defaultProjectId,
    this.description,
    this.domainId,
    this.enabled,
    this.extra,
    this.ignoreChangePasswordUponFirstUse,
    this.ignoreLockoutFailureAttempts,
    this.ignorePasswordExpiry,
    this.multiFactorAuthEnabled,
    this.multiFactorAuthRules,
    this.name,
    this.password,
    this.region,
  });

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

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      defaultProjectId: (() { final guardedValue = map['defaultProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extra: (() { final guardedValue = map['extra']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ignoreChangePasswordUponFirstUse: (() { final guardedValue = map['ignoreChangePasswordUponFirstUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreLockoutFailureAttempts: (() { final guardedValue = map['ignoreLockoutFailureAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignorePasswordExpiry: (() { final guardedValue = map['ignorePasswordExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      multiFactorAuthEnabled: (() { final guardedValue = map['multiFactorAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      multiFactorAuthRules: (() { final guardedValue = map['multiFactorAuthRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserMultiFactorAuthRule>(guardedValue, (value) => UserMultiFactorAuthRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


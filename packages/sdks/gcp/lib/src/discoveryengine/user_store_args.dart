// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_user_store_user_store_args_doc}
/// The set of arguments for UserStore.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_user_store_user_store_args_doc}
class UserStoreArgs {
  /// The resource name of the default license config assigned to users created in
  /// this user store. Format:
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  /// If `enableLicenseAutoRegister` is true, new users will automatically
  /// register under the default subscription.
  /// If the default license config doesn't have remaining license seats left,
  /// new users will not be assigned with license.
  final pulumi.Input<String>? defaultLicenseConfig;
  /// Whether to enable automatic license update for users with expired licenses
  /// in this user store. If enabled, users with expired licenses will
  /// automatically be updated to the default subscription if there are
  /// remaining license seats.
  final pulumi.Input<bool>? enableExpiredLicenseAutoUpdate;
  /// Whether to enable automatic license registration for new users created in
  /// this user store. If enabled, new users will automatically register under
  /// the default subscription.
  final pulumi.Input<bool>? enableLicenseAutoRegister;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID of the user store. Currently only accepts "default_user_store".
  final pulumi.Input<String>? userStoreId;

  /// Creates a new [UserStoreArgs].
  /// [defaultLicenseConfig] The resource name of the default license config assigned to users created in
  /// [enableExpiredLicenseAutoUpdate] Whether to enable automatic license update for users with expired licenses
  /// [enableLicenseAutoRegister] Whether to enable automatic license registration for new users created in
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [userStoreId] The ID of the user store. Currently only accepts "default_user_store".
  const UserStoreArgs({
    this.defaultLicenseConfig,
    this.enableExpiredLicenseAutoUpdate,
    this.enableLicenseAutoRegister,
    required this.location,
    this.project,
    this.userStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLicenseConfig': ?defaultLicenseConfig,
      'enableExpiredLicenseAutoUpdate': ?enableExpiredLicenseAutoUpdate,
      'enableLicenseAutoRegister': ?enableLicenseAutoRegister,
      'location': location,
      'project': ?project,
      'userStoreId': ?userStoreId,
    };
  }

  factory UserStoreArgs.fromMap(Map<String, dynamic> map) {
    return UserStoreArgs(
      defaultLicenseConfig: (() { final guardedValue = map['defaultLicenseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableExpiredLicenseAutoUpdate: (() { final guardedValue = map['enableExpiredLicenseAutoUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLicenseAutoRegister: (() { final guardedValue = map['enableLicenseAutoRegister']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userStoreId: (() { final guardedValue = map['userStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


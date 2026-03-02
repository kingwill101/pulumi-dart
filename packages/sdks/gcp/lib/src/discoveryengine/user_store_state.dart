// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserStore resources.
class UserStoreState {
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
  final pulumi.Input<String>? location;
  /// The unique full resource name of the user store. Values are of the format
  /// `projects/{project}/locations/{location}/userStores/{user_store_id}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID of the user store. Currently only accepts "default_user_store".
  final pulumi.Input<String>? userStoreId;

  /// Creates a new [UserStoreState].
  /// [defaultLicenseConfig] The resource name of the default license config assigned to users created in
  /// [enableExpiredLicenseAutoUpdate] Whether to enable automatic license update for users with expired licenses
  /// [enableLicenseAutoRegister] Whether to enable automatic license registration for new users created in
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the user store. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [userStoreId] The ID of the user store. Currently only accepts "default_user_store".
  UserStoreState({
    this.defaultLicenseConfig,
    this.enableExpiredLicenseAutoUpdate,
    this.enableLicenseAutoRegister,
    this.location,
    this.name,
    this.project,
    this.userStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLicenseConfig': ?defaultLicenseConfig,
      'enableExpiredLicenseAutoUpdate': ?enableExpiredLicenseAutoUpdate,
      'enableLicenseAutoRegister': ?enableLicenseAutoRegister,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'userStoreId': ?userStoreId,
    };
  }

  factory UserStoreState.fromMap(Map<String, dynamic> map) {
    return UserStoreState(
      defaultLicenseConfig: map['defaultLicenseConfig'] == null ? null : (map['defaultLicenseConfig']! as String).input(),
      enableExpiredLicenseAutoUpdate: map['enableExpiredLicenseAutoUpdate'] == null ? null : (map['enableExpiredLicenseAutoUpdate']! as bool).input(),
      enableLicenseAutoRegister: map['enableLicenseAutoRegister'] == null ? null : (map['enableLicenseAutoRegister']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      userStoreId: map['userStoreId'] == null ? null : (map['userStoreId']! as String).input(),
    );
  }
}


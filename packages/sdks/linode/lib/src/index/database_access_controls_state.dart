// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseAccessControls resources.
class DatabaseAccessControlsState {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  final pulumi.Input<List<String>>? allowLists;
  /// The unique ID of the target database.
  final pulumi.Input<int>? databaseId;
  /// The unique type of the target database. (`mysql`, `postgresql`)
  final pulumi.Input<String>? databaseType;

  /// Creates a new [DatabaseAccessControlsState].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  /// [databaseId] The unique ID of the target database.
  /// [databaseType] The unique type of the target database. (`mysql`, `postgresql`)
  DatabaseAccessControlsState({
    this.allowLists,
    this.databaseId,
    this.databaseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'databaseId': ?databaseId,
      'databaseType': ?databaseType,
    };
  }

  factory DatabaseAccessControlsState.fromMap(Map<String, dynamic> map) {
    return DatabaseAccessControlsState(
      allowLists: map['allowLists'] == null ? null : ((map['allowLists']! as List).cast<String>()).input(),
      databaseId: map['databaseId'] == null ? null : (map['databaseId']! as int).input(),
      databaseType: map['databaseType'] == null ? null : (map['databaseType']! as String).input(),
    );
  }
}


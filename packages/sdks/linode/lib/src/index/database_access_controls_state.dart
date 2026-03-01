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
    pulumi.Output<List<String>>? allowLists,
    pulumi.Output<int>? databaseId,
    pulumi.Output<String>? databaseType,
  }) :
      allowLists = pulumi.Input.asOptionalInput<List<String>>(allowLists),
      databaseId = pulumi.Input.asOptionalInput<int>(databaseId),
      databaseType = pulumi.Input.asOptionalInput<String>(databaseType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'databaseId': ?databaseId,
      'databaseType': ?databaseType,
    };
  }

  factory DatabaseAccessControlsState.fromMap(Map<String, dynamic> map) {
    return DatabaseAccessControlsState(
      allowLists: map['allowLists'] == null ? null : pulumi.Output.create<List<String>>((map['allowLists'] as List).cast<String>()),
      databaseId: map['databaseId'] == null ? null : pulumi.Output.create<int>(map['databaseId'] as int),
      databaseType: map['databaseType'] == null ? null : pulumi.Output.create<String>(map['databaseType'] as String),
    );
  }
}


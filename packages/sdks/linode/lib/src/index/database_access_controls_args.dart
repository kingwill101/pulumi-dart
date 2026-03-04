// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_access_controls_database_access_controls_args_doc}
/// The set of arguments for DatabaseAccessControls.
/// {@endtemplate}
/// {@macro pulumi_index_database_access_controls_database_access_controls_args_doc}
class DatabaseAccessControlsArgs {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  final pulumi.Input<List<String>> allowLists;

  /// The unique ID of the target database.
  final pulumi.Input<int> databaseId;

  /// The unique type of the target database. (`mysql`, `postgresql`)
  final pulumi.Input<String> databaseType;

  /// Creates a new [DatabaseAccessControlsArgs].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  /// [databaseId] The unique ID of the target database.
  /// [databaseType] The unique type of the target database. (`mysql`, `postgresql`)
  DatabaseAccessControlsArgs({
    required this.allowLists,
    required this.databaseId,
    required this.databaseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': allowLists,
      'databaseId': databaseId,
      'databaseType': databaseType,
    };
  }

  factory DatabaseAccessControlsArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccessControlsArgs(
      allowLists: pulumi.Input.fromValue(
        (map['allowLists'] as List).cast<String>(),
      ),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as int),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
    );
  }
}

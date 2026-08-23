// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTableScopeInfo {
  /// Contains the list of scope names of the data table. If the list is empty,
  /// the data table is treated as unscoped. The scope names should be
  /// full resource names and should be of the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope_name}"
  final pulumi.Input<List<String>> dataAccessScopes;

  /// Creates a new [DataTableScopeInfo].
  /// [dataAccessScopes] Contains the list of scope names of the data table. If the list is empty,
  const DataTableScopeInfo({
    required this.dataAccessScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccessScopes': dataAccessScopes,
    };
  }

  factory DataTableScopeInfo.fromMap(Map<String, dynamic> map) {
    return DataTableScopeInfo(
      dataAccessScopes: pulumi.Input.fromValue((map['dataAccessScopes'] as List).cast<String>()),
    );
  }
}

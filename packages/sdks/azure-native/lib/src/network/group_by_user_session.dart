// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_variable.dart';

/// Define user session identifier group by clauses.
class GroupByUserSession {
  /// List of group by clause variables.
  final pulumi.Input<List<GroupByVariable>> groupByVariables;

  /// Creates a new [GroupByUserSession].
  /// [groupByVariables] List of group by clause variables.
  GroupByUserSession({
    required this.groupByVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupByVariables': pulumi.Input.mapInputValue<List<GroupByVariable>, List<Map<String, dynamic>>>(groupByVariables, (value) => pulumi.Input.encodeList<GroupByVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupByUserSession.fromMap(Map<String, dynamic> map) {
    return GroupByUserSession(
      groupByVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<GroupByVariable>(map['groupByVariables']!, (value) => GroupByVariable.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


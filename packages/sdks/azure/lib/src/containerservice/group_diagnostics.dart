// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_diagnostics_log_analytics.dart';

class GroupDiagnostics {
  /// A `log_analytics` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupDiagnosticsLogAnalytics> logAnalytics;

  /// Creates a new [GroupDiagnostics].
  /// [logAnalytics] A `log_analytics` block as defined below. Changing this forces a new resource to be created.
  GroupDiagnostics({
    required this.logAnalytics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalytics': pulumi.Input.mapInputValue<GroupDiagnosticsLogAnalytics, Map<String, dynamic>>(logAnalytics, (value) => value.toMap()),
    };
  }

  factory GroupDiagnostics.fromMap(Map<String, dynamic> map) {
    return GroupDiagnostics(
      logAnalytics: pulumi.Input.fromValue(GroupDiagnosticsLogAnalytics.fromMap((map['logAnalytics']! as Map).cast<String, dynamic>())),
    );
  }
}


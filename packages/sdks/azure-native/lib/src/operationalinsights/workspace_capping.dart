// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The daily volume cap for ingestion.
class WorkspaceCapping {
  /// The workspace daily quota for ingestion.
  final pulumi.Input<double>? dailyQuotaGb;

  /// Creates a new [WorkspaceCapping].
  /// [dailyQuotaGb] The workspace daily quota for ingestion.
  WorkspaceCapping({this.dailyQuotaGb});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dailyQuotaGb': ?dailyQuotaGb};
  }

  factory WorkspaceCapping.fromMap(Map<String, dynamic> map) {
    return WorkspaceCapping(
      dailyQuotaGb: (() {
        final guardedValue = map['dailyQuotaGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}

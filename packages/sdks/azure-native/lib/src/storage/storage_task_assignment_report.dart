// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage task assignment report
class StorageTaskAssignmentReport {
  /// The container prefix for the location of storage task assignment report
  final pulumi.Input<String> prefix;

  /// Creates a new [StorageTaskAssignmentReport].
  /// [prefix] The container prefix for the location of storage task assignment report
  StorageTaskAssignmentReport({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory StorageTaskAssignmentReport.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentReport(
      prefix: (map['prefix'] as String).input(),
    );
  }
}


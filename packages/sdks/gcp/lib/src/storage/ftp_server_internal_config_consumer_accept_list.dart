// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FtpServerInternalConfigConsumerAcceptList {
  /// The maximum number of Private Service Connect endpoints that can be created in the consumer project.
  final pulumi.Input<int> connectionLimit;
  /// The project that is allowed to connect, in the format `projects/{project}`.
  final pulumi.Input<String> project;

  /// Creates a new [FtpServerInternalConfigConsumerAcceptList].
  /// [connectionLimit] The maximum number of Private Service Connect endpoints that can be created in the consumer project.
  /// [project] The project that is allowed to connect, in the format `projects/{project}`.
  const FtpServerInternalConfigConsumerAcceptList({
    required this.connectionLimit,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': connectionLimit,
      'project': project,
    };
  }

  factory FtpServerInternalConfigConsumerAcceptList.fromMap(Map<String, dynamic> map) {
    return FtpServerInternalConfigConsumerAcceptList(
      connectionLimit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['connectionLimit'])),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

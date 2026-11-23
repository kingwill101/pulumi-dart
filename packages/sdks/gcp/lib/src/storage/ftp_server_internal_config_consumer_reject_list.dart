// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FtpServerInternalConfigConsumerRejectList {
  /// The project that is rejected from connecting, in the format `projects/{project}`.
  final pulumi.Input<String> project;

  /// Creates a new [FtpServerInternalConfigConsumerRejectList].
  /// [project] The project that is rejected from connecting, in the format `projects/{project}`.
  const FtpServerInternalConfigConsumerRejectList({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
    };
  }

  factory FtpServerInternalConfigConsumerRejectList.fromMap(Map<String, dynamic> map) {
    return FtpServerInternalConfigConsumerRejectList(
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

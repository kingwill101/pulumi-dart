// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinksResultConfigPartitioning {
  /// The pattern of the date string
  final pulumi.Input<String> timePattern;

  /// Creates a new [GetPipelineSinksResultConfigPartitioning].
  /// [timePattern] The pattern of the date string
  const GetPipelineSinksResultConfigPartitioning({
    required this.timePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timePattern': timePattern,
    };
  }

  factory GetPipelineSinksResultConfigPartitioning.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResultConfigPartitioning(
      timePattern: pulumi.Input.fromValue(map['timePattern'] as String),
    );
  }
}

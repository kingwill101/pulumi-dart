// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DestinationTableProperties {
  /// [Optional] The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.
  final pulumi.Input<String>? description;
  /// [Internal] This field is for Google internal use only.
  final pulumi.Input<String>? expirationTime;
  /// [Optional] The friendly name for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current friendly name is provided, the job will fail.
  final pulumi.Input<String>? friendlyName;
  /// [Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [DestinationTableProperties].
  /// [description] [Optional] The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.
  /// [expirationTime] [Internal] This field is for Google internal use only.
  /// [friendlyName] [Optional] The friendly name for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current friendly name is provided, the job will fail.
  /// [labels] [Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
  DestinationTableProperties({
    this.description,
    this.expirationTime,
    this.friendlyName,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expirationTime': ?expirationTime,
      'friendlyName': ?friendlyName,
      'labels': ?labels,
    };
  }

  factory DestinationTableProperties.fromMap(Map<String, dynamic> map) {
    return DestinationTableProperties(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
    );
  }
}


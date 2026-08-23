// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DestinationTablePropertiesResponse {
  /// [Optional] The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.
  final pulumi.Input<String> description;
  /// [Internal] This field is for Google internal use only.
  final pulumi.Input<String> expirationTime;
  /// [Optional] The friendly name for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current friendly name is provided, the job will fail.
  final pulumi.Input<String> friendlyName;
  /// [Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [DestinationTablePropertiesResponse].
  /// [description] [Optional] The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.
  /// [expirationTime] [Internal] This field is for Google internal use only.
  /// [friendlyName] [Optional] The friendly name for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current friendly name is provided, the job will fail.
  /// [labels] [Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
  const DestinationTablePropertiesResponse({
    required this.description,
    required this.expirationTime,
    required this.friendlyName,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expirationTime': expirationTime,
      'friendlyName': friendlyName,
      'labels': labels,
    };
  }

  factory DestinationTablePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DestinationTablePropertiesResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      friendlyName: pulumi.Input.fromValue(map['friendlyName'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}
